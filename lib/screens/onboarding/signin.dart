import 'dart:collection';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/models/firebaseintegrate.dart';
import 'package:jaz_app/screens/bottomnavigation/bottombar.dart';
import 'package:jaz_app/screens/onboarding/forgetpassword.dart';
import 'package:jaz_app/screens/onboarding/signup.dart';
import 'package:jaz_app/screens/onboarding/privacypolicy.dart';
import 'package:jaz_app/utils/GlobalStates.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/facebookevents.dart';
import 'package:jaz_app/utils/firebase_events.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:apple_sign_in/apple_sign_in.dart';

import '../../models/user/user.dart';
import '../homebottombar.dart';

class SignIn extends StatefulWidget {
  final String redirectName;

  SignIn(this.redirectName);

  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  int _currentIndex = 0;
  TextEditingController _emailTxt = TextEditingController();
  TextEditingController _passwordTxt = TextEditingController();
  AppUtility appUtility = AppUtility();
  bool isAppleLoginAvailable = false;

  final _focus = FocusNode();

  String _email = "", _password = "";
  final _controller = PersistentTabController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    appUtility = AppUtility();
    appleLoginAvailable();
  }

  appleLoginAvailable() async {
    if (await AppleSignIn.isAvailable()) {
      setState(() {
        isAppleLoginAvailable = true;
      });
    }
  }

  loginRedirect() {
    if (widget.redirectName == "Booking") {
      Navigator.of(context).pop();
      Navigator.of(context).pop();

    } else {
      getUserDetailsAndNavigation();
    }
  }

  @override
  Widget build(BuildContext context) {
    final double overAllHeight = MediaQuery.of(context).size.height;
    final double overAllWidth = MediaQuery.of(context).size.width;

    var buttonHeight = overAllHeight * 0.055;
    var loginurAccountTopPadding = MediaQuery.of(context).size.height * 0.03;
    var loginUrAccountLeftpadding = MediaQuery.of(context).size.width * 0.05;
    var textfieldLeftPadding = MediaQuery.of(context).size.width * 0.06;
    var textfieldTopPadding = MediaQuery.of(context).size.height * 0.025;
    var textFieldHeight = overAllHeight * 0.055;
    var buttonWidth = MediaQuery.of(context).size.width * 0.8;
    var dontHaveAccTopPadding = MediaQuery.of(context).size.height * 0.04;
    var privacyTopPadding = MediaQuery.of(context).size.height * 0.02;

    if (textFieldHeight < 40) {
      textFieldHeight = 45;
      buttonHeight = 45;
    }

    return Scaffold(
      backgroundColor: Uicolors.backgroundColor,
      appBar: AppBar(
        toolbarHeight:
            AppUtility().isTablet(context) ? 80 : AppBar().preferredSize.height,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(
                0, 0, MediaQuery.of(context).size.width * 0.04, 0),
            child: Image.asset(
              "assets/images/JHG_logo.png",
              width: AppUtility().isTablet(context) ? 180 : 120,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: AppUtility().isTablet(context)
            ? EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.10,
                right: MediaQuery.of(context).size.width * 0.10)
            : EdgeInsets.all(0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formKey,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: loginurAccountTopPadding),
                padding:
                    EdgeInsets.fromLTRB(loginUrAccountLeftpadding, 0, 0, 0),
                child: Text(
                  Strings.loginuraccount,
                  style: loginAccountStyle,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(textfieldLeftPadding,
                      textfieldTopPadding, textfieldLeftPadding, 0),
                  child: Container(
                      alignment: Alignment.center,
                      height: textFieldHeight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: border,
                        borderRadius:
                            new BorderRadius.circular(fieldBorderRadius),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            // top: MediaQuery.of(context).size.height * 0.030
                          ),
                          //  padding: EdgeInsets.only(left: 15, right: 15,top: MediaQuery.of(context).size.height*0.035),
                          child: TextFormField(
                              // maxLength: Uicolors.MAXLENGTH_TEXT,
                              style: emailTextStyle,
                              controller: _emailTxt,
                              //   focusNode: _focus,
                              /*validator: MultiValidator([
                                RequiredValidator(errorText: "* Required"),
                                EmailValidator(errorText: "Enter valid email id"),
                              ]),*/
                              /*inputFormatters: [
                                new LengthLimitingTextInputFormatter(50),
                              ],*/
                              onSaved: (String? value) {
                                _email = value!;
                              },
                              cursorColor: Uicolors.titleText,
                              decoration: InputDecoration(
                                isCollapsed: true,
                                border: InputBorder.none,
                                hintText: Strings.youremail,
                                hintStyle: emailHintStyle,
                              ))))),
              Padding(
                  padding: EdgeInsets.fromLTRB(textfieldLeftPadding,
                      textfieldTopPadding, textfieldLeftPadding, 0),
                  child: Container(
                      alignment: Alignment.center,
                      height: textFieldHeight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: border,
                        borderRadius:
                            new BorderRadius.circular(fieldBorderRadius),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            //      top: MediaQuery.of(context).size.height * 0.030
                          ),
                          child: TextFormField(
                              //  maxLength: Uicolors.MAXLENGTH_TEXT,
                              style: emailTextStyle,
                              controller: _passwordTxt,
                              obscureText: true,
                              //  maxLength: 15,
                              onSaved: (String? value) {
                                _password = value!;
                              },
                              /* validator: MultiValidator([
                                RequiredValidator(errorText: "* Required"),
                                MinLengthValidator(6,
                                    errorText: "Password should be atleast 6 characters"),
                                MaxLengthValidator(15,
                                    errorText:
                                    "Password should not be greater than 15 characters"),
                              ]),*/
                              cursorColor: Uicolors.titleText,
                              decoration: InputDecoration(
                                isCollapsed: true,
                                border: InputBorder.none,
                                hintText: Strings.password_new,
                                hintStyle: emailHintStyle,
                              ))))),
              Container(
                //margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                margin: EdgeInsets.only(
                    left: AppUtility().isTablet(context)
                        ? MediaQuery.of(context).size.width * 0.05
                        : 0,
                    top: textfieldTopPadding,
                    right: AppUtility().isTablet(context)
                        ? MediaQuery.of(context).size.width * 0.05
                        : 0),
                child: FlatButton(
                  height: buttonHeight,
                  minWidth: buttonWidth,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(buttonHeight / 2),
                  ),
                  onPressed: () {
                    FocusManager.instance.primaryFocus!.unfocus();
                    if (_emailTxt.text.toString().isEmpty) {
                      appUtility.showToastView(
                          "Please provide email address", context);
                      // Toast.show(
                      //     "",
                      //     context,
                      //     Toast.LENGTH_LONG,
                      //     Toast.BOTTOM,
                      //     Uicolors.buttonbg,
                      //     Colors.white,
                      //     3,
                      //     null);
                    } else if (!appUtility
                        .validateEmail(_emailTxt.text.toString())) {
                      appUtility.showToastView(
                          "Please provide valid email address", context);
                      // ToastView.createView(
                      //     "Please provide valid email address",
                      //     context,
                      //     Toast.LENGTH_LONG,
                      //     Toast.BOTTOM,
                      //     Uicolors.buttonbg,
                      //     Colors.white,
                      //     3,
                      //     null);
                    } else if (_passwordTxt.text.toString().isEmpty) {
                      appUtility.showToastView(
                          "Please provide valid Password", context);

                      // ToastView.createView(
                      //     "Please provide valid Password",
                      //     context,
                      //     Toast.LENGTH_LONG,
                      //     Toast.BOTTOM,
                      //     Uicolors.buttonbg,
                      //     Colors.white,
                      //     3,
                      //     null);
                    } else {
                      EasyLoading.show();
                      // BuildContext? dialogContext;
                      // AppUtility().showProgressDialog(context,type:null,dismissDialog:(value){
                      //   dialogContext = value;
                      // });
                      FirebaseIntegrate()
                          .signInWithEmail(_emailTxt.text, _passwordTxt.text)
                          .then((value) async {
                        appUtility.showToastView(value.toString(), context);

                        EasyLoading.dismiss();
                        // await new Future.delayed(const Duration(milliseconds: 500));
                        // AppUtility().dismissDialog(dialogContext!);
                        if (value.toString() == "Login successfully") {
                          FirebaseEvents().loginEvent(_emailTxt.text);

                          /// Login event triggered here with email as params.
                          loginRedirect();
                        }
                      });
                    }
                  },
                  color: Uicolors.buttonbg,
                  child: Text(
                    Strings.continues,
                    style: buttonStyle,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  pushNewScreen(
                    context,
                    screen: ForgetPassword(widget.redirectName),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      bottom: textfieldTopPadding, top: privacyTopPadding),
                  child: Text(
                    Strings.forgetyourpassword_new,
                    style: forgetpassStyle,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        width: buttonWidth,
                        padding: EdgeInsets.only(
                            right: 15, left: textfieldLeftPadding),
                        child: Divider(
                          color: Uicolors.desText,
                          thickness: 1,
                          //   height: 40,
                        )),
                  ),
                  Text(
                    Strings.or,
                    style: orTextStyle,
                  ),
                  Expanded(
                    child: new Container(
                        //margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        width: buttonWidth,
                        padding: EdgeInsets.only(
                            right: textfieldLeftPadding, left: 15),
                        child: Divider(
                          color: Uicolors.desText,
                          //    height: 40,
                          thickness: 1,
                        )),
                  ),
                ]),
              ),
              GestureDetector(
                onTap: () {
                  FirebaseIntegrate().signUpWithGoogle(context).then((value) {
                    //   screen: HomeScreen();
                    loginRedirect();
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    top: textfieldTopPadding,
                    left: AppUtility().isTablet(context)
                        ? MediaQuery.of(context).size.width * 0.05
                        : 0,
                    right: AppUtility().isTablet(context)
                        ? MediaQuery.of(context).size.width * 0.05
                        : 0,
                  ),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //color: Uicolors.textformbg,
                  width: buttonWidth,
                  height: buttonHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(buttonHeight / 2),
                    shape: BoxShape.rectangle,
                  ),

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Image.asset(
                          "assets/images/google.png",
                          width: iconSize,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(textfieldLeftPadding, 0, 0, 0),
                        child: Text(Strings.continue_with_google,
                            style: loginWithGoogleStyle),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  FirebaseIntegrate().signUpWithFacebook(context).then((value) {
                    loginRedirect();
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    top: textfieldTopPadding,
                    left: AppUtility().isTablet(context)
                        ? MediaQuery.of(context).size.width * 0.05
                        : 0,
                    right: AppUtility().isTablet(context)
                        ? MediaQuery.of(context).size.width * 0.05
                        : 0,
                  ),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //color: Uicolors.textformbg,
                  width: buttonWidth,
                  height: buttonHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(buttonHeight / 2),
                    shape: BoxShape.rectangle,
                  ),

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Image.asset(
                          "assets/images/fb.png",
                          width: backIconSize,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(textfieldLeftPadding, 0, 0, 0),
                        child: Text(Strings.continue_with_facebook,
                            style: loginWithGoogleStyle),
                      )
                    ],
                  ),
                ),
              ),
              if (Platform.isIOS && isAppleLoginAvailable)
                GestureDetector(
                  onTap: () async {
                    if (await AppleSignIn.isAvailable()) {
                      FirebaseIntegrate()
                          .signInWithApple(context)
                          .then((value) {
                        //   screen: HomeScreen();
                        loginRedirect();
                      });
                    } else {
                      AppUtility().showToastView(
                          "Apple SignIn is not available for your device",
                          context);
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: textfieldTopPadding,
                      left: AppUtility().isTablet(context)
                          ? MediaQuery.of(context).size.width * 0.05
                          : 0,
                      right: AppUtility().isTablet(context)
                          ? MediaQuery.of(context).size.width * 0.05
                          : 0,
                    ),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //color: Uicolors.textformbg,
                    width: buttonWidth,
                    height: buttonHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(buttonHeight / 2),
                      shape: BoxShape.rectangle,
                    ),

                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            "assets/images/apple.png",
                            width: iconSize,
                            height: iconSize,
                            color: Uicolors.backText,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              textfieldLeftPadding, 0, 0, 0),
                          child: Text(Strings.continue_with_apple,
                              style: loginWithGoogleStyle),
                        )
                      ],
                    ),
                  ),
                ),
              Container(
                margin: EdgeInsets.only(top: dontHaveAccTopPadding),
                child: Row(children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(left: textfieldLeftPadding, right: 0.0),
                    child: Text(
                      Strings.donthaveaccount,
                      style: dontHaveAccStyle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: SignUp(widget.redirectName),
                        withNavBar: true,
                        // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 10.0),
                      child: Text(Strings.sign_up, style: signUpGreenStyle),
                    ),
                  ),
                ]),
              ),
              GestureDetector(
                onTap: () {
                  pushNewScreen(
                    context,
                    screen: PrivacyPolicy(widget.redirectName),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                      left: textfieldLeftPadding,
                      top: privacyTopPadding,
                      bottom: textfieldTopPadding),
                  child: Text(
                    Strings.privacy_policy,
                    style: privacyPolicyStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget myAppBarIcon() {
    return Container(
      width: 30,
      height: 30,
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  void getUserDetailsAndNavigation() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    if (user != null) {
      var userId = user.uid;
      // EasyLoading.show();
      await users.doc(userId).get().then((value) async {
        // EasyLoading.dismiss();
       UserModel users =
        UserModel.fromJson(value.data() as Map<String, dynamic>);
       if (users != null) {
         if (users.contact.emailAddress != null &&
             users.contact.emailAddress.isNotEmpty &&
             users.name.firstName != null &&
             users.name.firstName.isNotEmpty) {
           Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
               MaterialPageRoute(
                   builder: (context) =>
                   new HomeBottomBarScreen(0) /*BottomBar()*/),
                   (Route<dynamic> route) => false);
         } else {
          /* pushNewScreen(
             context,
             screen: EditProfilePage(),
             withNavBar: true,
             // OPTIONAL VALUE. True by default.
             pageTransitionAnimation: PageTransitionAnimation.cupertino,
           ).then((value) {});*/
         }
       }
      });
    }
  }
}
