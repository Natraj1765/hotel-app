import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jaz_app/models/user/user.dart';
import 'package:crypto/crypto.dart';
import 'package:jaz_app/utils/firebase_events.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class FirebaseIntegrate {
  static final FacebookLogin facebookSignIn = new FacebookLogin();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  CollectionReference destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<void> signUpWithFacebook(BuildContext context) async {
    // Firebase.initializeApp();
    // facebookSignIn.loginBehavior = FacebookLoginBehavior.webViewOnly;
    final FacebookLoginResult result = await facebookSignIn.logIn(['email']);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        EasyLoading.show();
        // BuildContext? dialogContext;
        // AppUtility().showProgressDialog(context,type:null,dismissDialog:(value){
        //   dialogContext = value;
        // });

        final FacebookAccessToken accessToken = result.accessToken;
        AuthCredential credential =
            FacebookAuthProvider.credential(result.accessToken.token);
        final User? user =
            (await FirebaseAuth.instance.signInWithCredential(credential)).user;
        var userName = "";

        addUser(user, userName, "", "3").then((value) async {
          EasyLoading.dismiss();
          // await new Future.delayed(const Duration(milliseconds: 500));
          // AppUtility().dismissDialog(dialogContext!);
          return value;
        });
        break;
      case FacebookLoginStatus.cancelledByUser:
        // _showMessage('Login cancelled by the user.');
        print('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        /*_showMessage('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');*/
        print('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }
  }

  Future<String> signUpWithGoogle(BuildContext context) async {
    //  Firebase.initializeApp();
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    EasyLoading.show();
    // BuildContext? dialogContext;
    // AppUtility().showProgressDialog(context,type:null,dismissDialog:(value){
    //   dialogContext = value;
    // });
    final User? user =
        (await FirebaseAuth.instance.signInWithCredential(credential)).user;
    var userName = "";

    print("user valuee $user");
    return addUser(user, userName, "", "3").then((value) async {
      EasyLoading.dismiss();
      return value;
    });
    // Once signed in, return the UserCredential
    // return FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<String> signUpWithEmail(firstName, lastName, email, password) async {
    //  Firebase.initializeApp();
    print("$firstName $lastName");
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      addUser(userCredential.user, firstName, lastName, "1").then((value) {
        return value;
      });
      return "Registered successfully";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('Password is too weak.');
        return "The password provided is too weak";
      } else if (e.code == 'email-already-in-use') {
        return "Email address already exist";
      } else {
        return e.message.toString();
      }
    } catch (e) {
      print(e);
      return "Exception Occured";
    }
  }

  Future<void> sendPasswordResetEmail(String email) {
    return FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  Future<String> signInWithEmail(email, password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return "Login successfully";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return "Email address doesn't exists";
      } else if (e.code == 'wrong-password') {
        return "Invalid password";
      } else {
        return e.message.toString();
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<bool> isCheckExistRecord(User user, type) async {
    bool valueExist = false;
    if (user != null) {
      var userId = user.uid;
      // EasyLoading.show();
      await users.doc(userId).get().then((value) async {
        // EasyLoading.dismiss();
        if (value.exists) {
          valueExist = true;

        }else{
          valueExist = false;
        }
      });
    }
    return valueExist;
  }

  Future<String> addUser(user, username, lastName, type) async {
    bool value = await isCheckExistRecord(user, type);

    if(!value){
      var phoneNumber = "";
      var firstName = "";
      var lName = "";
      var fullName = "";
      if (type == "1") {
        print("1");
        firstName = username;
        lName = lastName;
      }
      else if (type.contains("3")) {
        print("3");

        fullName = user.displayName == null ? username : user.displayName;
        phoneNumber = user.phoneNumber;
        var nameAry = fullName.split(" ");
        firstName = nameAry[0];
        nameAry.removeAt(0);
        lName = nameAry.join(" ");
      }
      else {
        fullName = user.displayName;
        phoneNumber = user.phoneNumber;
        var nameAry = fullName.split(" ");
        firstName = nameAry[0];
        nameAry.removeAt(0);
        lName = nameAry.join(" ");
      }
      var address = new Address();
      var name = new Name();
      var contact = new Contact();

      var userModels = UserModel(address: address, name: name, contact: contact);
      name.firstName = firstName;
      name.lastName = lName == " " ? firstName : lName;
      name.fullName = "$firstName $lName";
      contact.emailAddress = user.email ?? "";
      contact.phoneNumbers = phoneNumber;
      return users.doc(user.uid).set(userModels.toJson()).then((value) {
        setFirstTimeInstallInIOS();
        firebaseLoginEvent(user);
        return "User Added";
      }).catchError((error) {
        return "Failed to add user: $error";
      });
    }
    else{
       firebaseLoginEvent(user);
       setFirstTimeInstallInIOS();
       return "";
    }
  }

  Future<List<String>> getDestination() async {
    List<String> dest = [];
    return destinationRef.get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        dest.add(doc["area"]);
      });
      return dest;
    });
  }

  Future<void> addDestination() async {
    //  Firebase.initializeApp();
    return destinationRef
        .doc("tunisia")
        .set({
          "name": "Tunisia",
          "area": "Tunisia",
          "country": "Tunisia",
          "crs_code": "",
          "description_short":
              "Home of the ancient city of Carthage, Tunisia was once an important player in the Mediterranean, thanks to its location in the centre of North Africa, close to vital shipping routes. There are several ways to enjoy your vacation in Tunisia, including spending your vacation on the gorgeous Mediterranean beaches, or planning a circuit of Tunisia.",
          "is_active": true,
          "location": "41.997346,21.42799",
          "order": 130,
          "thumb":
              "https://images.jazhotels.com/SqfNvFOeD6C8xbcYSt7aFctvQ0U=/990x598/filters:focal()/storage.googleapis.com%2Fjaz-prod%2Fcms%2FTunisia%2FTunisia_1.jpg"
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  String generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<String> signInWithApple(BuildContext context) async {
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    // Request credential for the currently signed in Apple account.
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    // Create an `OAuthCredential` from the credential returned by Apple.
    final credential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );
    EasyLoading.show();
    final User? user =
        (await FirebaseAuth.instance.signInWithCredential(credential)).user;
    var userName = "";

    return addUser(user, userName, "", "3").then((value) async {
      EasyLoading.dismiss();
      return value;
    });
    // Once signed in, return the UserCredential
    // return FirebaseAuth.instance.signInWithCredential(credential);
  }

  void firebaseLoginEvent(user) {
    if (user.email != null) {
      FirebaseEvents().loginEvent(user.email!);
      /// Login event triggered here with email as params.
    }
  }

  void setFirstTimeInstallInIOS()async {

    if(Platform.isIOS) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('first_time', false);
    }
  }
}
