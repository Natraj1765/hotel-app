import 'dart:collection';

import 'package:apple_sign_in/apple_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/models/firebaseintegrate.dart';
import 'package:jaz_app/screens/bottomnavigation/bottombar.dart';
import 'package:jaz_app/screens/onboarding/privacypolicy.dart';
import 'package:jaz_app/screens/onboarding/signin.dart';
import 'package:jaz_app/utils/GlobalStates.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/facebookevents.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:toast/toast.dart';
import 'dart:io';

import '../../utils/firebase_events.dart';
import '../homebottombar.dart';

class SignUp extends StatefulWidget {
  final String redirectName;

  SignUp(this.redirectName);

  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _currentIndex = 0;

  TextEditingController _fNameTxt = TextEditingController();
  TextEditingController _lNameTxt = TextEditingController();
  TextEditingController _emailTxt = TextEditingController();
  TextEditingController _passwordTxt = TextEditingController();

  String _fName = "",_lName = "", _email = "", _password = "";

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AppUtility appUtility = AppUtility();
  bool isAppleLoginAvailable=false;

  void _onBottomNavBarTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
      Navigator.pop(context);
      Navigator.pop(context);
      // pushNewScreen(
      //   context,
      //   screen: AsGuestSummery(GlobalState.selectedBookingRoomDet, HashMap()),
      //   withNavBar: false, // OPTIONAL VALUE. True by default.
      //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
      // );
    } else {
      Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) => new HomeBottomBarScreen(0) /*BottomBar()*/),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final double overAllHeight = MediaQuery.of(context).size.height;
    final double overAllWidth = MediaQuery.of(context).size.width;

    var buttonHeight = overAllHeight * 0.055;
    var loginurAccountTopPadding = MediaQuery.of(context).size.height * 0.03;
    var loginUrAccountLeftpadding = MediaQuery.of(context).size.width * 0.05;
    var textfieldLeftPadding = MediaQuery.of(context).size.width * 0.055;
    var textfieldTopPadding = MediaQuery.of(context).size.height * 0.025;
    var textFieldHeight = overAllHeight * 0.055;
    var buttonWidth = MediaQuery.of(context).size.width * 0.8;
    var dontHaveAccTopPadding = MediaQuery.of(context).size.height * 0.04;
    var privacyTopPadding = MediaQuery.of(context).size.height * 0.01;
    var textFieldBorderRadius = fieldBorderRadius;

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
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      // pushNewScreen(
                      //   context,
                      //   screen: HomeBottomBarScreen(3),
                      //   withNavBar: true, // OPTIONAL VALUE. True by default.
                      //   pageTransitionAnimation:
                      //       PageTransitionAnimation.cupertino,
                      // );
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.height * 0.005, 10, 0, 0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Uicolors.buttonbg,
                        size: backIconSize,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);

                      // pushNewScreen(
                      //   context,
                      //   screen: HomeBottomBarScreen(3),
                      //   withNavBar: true, // OPTIONAL VALUE. True by default.
                      //   pageTransitionAnimation:
                      //       PageTransitionAnimation.cupertino,
                      // );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child:
                          Text(widget.redirectName=="Booking"?Strings.back:Strings.backtosign, style: backSigninGreenStyle),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height * 0.015),
                  child: Image.asset(
                    "assets/images/JHG_logo.png",
                    width: AppUtility().isTablet(context) ? 180 : 120,
                  ),
                ),
              ),
            ],
          ),
        ),
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
                      "Sign Up to Your Account",
                      style: loginAccountStyle,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(textfieldLeftPadding,
                          loginurAccountTopPadding, textfieldLeftPadding, 0),
                      child: Container(
                          alignment: Alignment.center,
                          height: textFieldHeight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: border,
                            borderRadius: new BorderRadius.circular(
                                textFieldBorderRadius),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(
                                left: 15, right: 15,
                                //     top: 5
                              ),
                              child: TextFormField(
                                  // maxLength: Uicolors.MAXLENGTH_TEXT,
                                  style: emailTextStyle,
                                  controller: _fNameTxt,
                                  validator: (args) {
                                    if (args.toString().length <= 30) {
                                      return null;
                                    } else if (args.toString().isNotEmpty && args.toString().length > 30) {
                                      return 'First name should not exceed 30 characters';
                                    }
                                    },
                                  onSaved: (String? value) {
                                    _fName = value!;
                                  },
                                  cursorColor: Uicolors.titleText,
                                  keyboardType: TextInputType.name,
                                  inputFormatters: [

                                   new LengthLimitingTextInputFormatter(
                                        30),
                                  ],
                                  decoration: InputDecoration(
                                      isCollapsed: true,
                                      hintStyle: emailHintStyle,
                                      border: InputBorder.none,
                                      hintText: Strings.firstStr,
                                      errorStyle: errorTextStyle,

                                    // labelText: Strings.username,
                                      ))))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(textfieldLeftPadding,
                          loginurAccountTopPadding, textfieldLeftPadding, 0),
                      child: Container(
                          alignment: Alignment.center,
                          height: textFieldHeight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: border,
                            borderRadius: new BorderRadius.circular(
                                textFieldBorderRadius),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(
                                left: 15, right: 15,
                                //     top: 5
                              ),
                              child: TextFormField(
                                // maxLength: Uicolors.MAXLENGTH_TEXT,
                                  style: emailTextStyle,
                                  controller: _lNameTxt,
                                  validator: (args) {
                                    if (args.toString().length <= 30) {
                                      return null;
                                    } else if (args.toString().isNotEmpty && args.toString().length > 30) {
                                      return 'Last name should not exceed 30 characters';
                                    }
                                  },
                                  onSaved: (String? value) {
                                    _lName = value!;
                                  },
                                  cursorColor: Uicolors.titleText,
                                  keyboardType: TextInputType.name,
                                  inputFormatters: [

                                    new LengthLimitingTextInputFormatter(
                                        30),
                                  ],
                                  decoration: InputDecoration(
                                      isCollapsed: true,
                                      hintStyle: emailHintStyle,
                                      border: InputBorder.none,
                                      hintText: Strings.lastStr
                                    // labelText: Strings.username,
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
                            borderRadius: new BorderRadius.circular(
                                textFieldBorderRadius),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(
                                left: 15, right: 15,
                                //     top: 5
                              ),
                              child: TextFormField(
                                  //    maxLength: Uicolors.MAXLENGTH_TEXT,
                                  style: emailTextStyle,
                                  controller: _emailTxt,
                                  /*validator: MultiValidator([
                               RequiredValidator(errorText: "* Required"),
                               EmailValidator(errorText: "Enter valid email id"),
                             ]),*/
                                  onSaved: (String? value) {
                                    _email = value!;
                                  },
                                  cursorColor: Uicolors.titleText,
                                  decoration: InputDecoration(
                                      isCollapsed: true,
                                      hintStyle: emailHintStyle,
                                      border: InputBorder.none,
                                      hintText: Strings.youremail
                                      // labelText: Strings.youremail,
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
                            borderRadius: new BorderRadius.circular(
                                textFieldBorderRadius),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(
                                left: 15, right: 15,
                                //        top: 5
                              ),
                              child: TextFormField(
                                  // maxLength: Uicolors.MAXLENGTH_TEXT,
                                  style: emailTextStyle,
                                  controller: _passwordTxt,
                                  obscureText: true,
                                  //maxLength: 15,
                                  onSaved: (String? value) {
                                    _password = value!;
                                  },
                                  /*validator: MultiValidator([
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
                                      hintStyle: emailHintStyle,
                                      border: InputBorder.none,
                                      hintText: Strings.password_new
                                      //labelText: Strings.password_new,
                                      ))))),
                  Padding(
                    padding: EdgeInsets.fromLTRB(textfieldLeftPadding,
                        textfieldTopPadding, textfieldLeftPadding, 0),
                    child: Text(
                      "*Password should contain at least one number, uppercase and special character.",
                      style: passwordHintStyle,
                    ),
                  ),
                  Container(

                    padding: AppUtility().isTablet(context)
                        ? EdgeInsets.all(MediaQuery.of(context).size.width * 0.05)
                        : EdgeInsets.fromLTRB(
                        0, textfieldTopPadding, 0, textfieldTopPadding),
                    child: FlatButton(
                      minWidth: buttonWidth,
                      height: buttonHeight,
                      shape: new RoundedRectangleBorder(
                        borderRadius:
                            new BorderRadius.circular(buttonHeight / 2),
                      ),
                      onPressed: () {
                        FocusManager.instance.primaryFocus!.unfocus();
                        if (_fNameTxt.text.trim().toString().isEmpty) {
                          appUtility.showToastView(
                              "Please provide first name", context);
                        }else if (_lNameTxt.text.trim().toString().isEmpty) {
                          appUtility.showToastView(
                              "Please provide last name", context);
                        }else if (_emailTxt.text.trim().toString().isEmpty) {
                          appUtility.showToastView(
                              "Please provide email address", context);

                        } else if (!appUtility
                            .validateEmail(_emailTxt.text.toString())) {
                          appUtility.showToastView(
                              "Please provide valid email address", context);

                        } else if (_passwordTxt.text.toString().isEmpty) {
                          appUtility.showToastView(
                              "Please provide password", context);

                        } else if (!appUtility
                            .validatePassword(_passwordTxt.text.toString())) {
                          appUtility.showToastView(
                              "Please provide valid password", context);

                        } else {
                          EasyLoading.show();
                          // BuildContext? dialogContext;
                          // AppUtility().showProgressDialog(context,type:null,dismissDialog:(value){
                          //   dialogContext = value;
                          // });
                          FirebaseIntegrate()
                              .signUpWithEmail(_fNameTxt.text,_lNameTxt.text, _emailTxt.text.trim(), _passwordTxt.text)
                              .then((value) async {
                            EasyLoading.dismiss();
                            // await new Future.delayed(const Duration(milliseconds: 500));
                            // AppUtility().dismissDialog(dialogContext!);
                            FocusManager.instance.primaryFocus!.unfocus();
                            appUtility.showToastView(value.toString(), context);

                            // ToastView.createView(
                            //    value.toString(),
                            //    context,
                            //    Toast.LENGTH_LONG,
                            //    Toast.BOTTOM,
                            //    Uicolors.buttonbg,
                            //    Colors.white,
                            //    3,
                            //    null);
                            if (value.toString() == "Registered successfully") {
                              FirebaseEvents().signupEvent(_emailTxt.text, _fNameTxt.text+" "+_lNameTxt.text); /// SignUp event triggered here with email & name as params.
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
                  Container(
                    alignment: Alignment.center,
                    child: Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin: EdgeInsets.only(
                                left: textfieldLeftPadding, right: 15.0),
                            child: Divider(
                              color: Uicolors.desText,
                              thickness: 1,
                              //    height: 50,
                            )),
                      ),
                      Text(Strings.or, style: orTextStyle),
                      Expanded(
                        child: new Container(
                            margin: EdgeInsets.only(
                                left: 15.0, right: textfieldLeftPadding),
                            child: Divider(
                              color: Uicolors.desText,
                              thickness: 1,
                              //  height: 50,
                            )),
                      ),
                    ]),
                  ),
                  Container(
                      padding: AppUtility().isTablet(context)
                          ? EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                          right: MediaQuery.of(context).size.width * 0.05)
                          : EdgeInsets.all(0),
                    child: Column(
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            FirebaseIntegrate()
                                .signUpWithGoogle(context)
                                .then((value) {
                              loginRedirect();
                            }).catchError((error) {
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: textfieldTopPadding),
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            //color: Uicolors.textformbg,
                            width: buttonWidth,
                            height: buttonHeight,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(buttonHeight / 2),
                              shape: BoxShape.rectangle,
                            ),

                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      0, 0, 0, 0),
                                  child: Image.asset(
                                    "assets/images/google.png",
                                    width: textFieldIconSize,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      textfieldLeftPadding, 0, 0, 0),
                                  child: Text(Strings.signup_with_google,
                                      style: loginWithGoogleStyle),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            FirebaseIntegrate()
                                .signUpWithFacebook(context)
                                .then((value) {
                              loginRedirect();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: textfieldTopPadding),
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            //color: Uicolors.textformbg,
                            width: buttonWidth,
                            height: buttonHeight,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(buttonHeight / 2),
                              shape: BoxShape.rectangle,
                            ),

                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      10, 0, 0, 0),
                                  child: Image.asset(
                                    "assets/images/fb.png",
                                    width: backIconSize,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      textfieldLeftPadding, 0, 0, 0),
                                  child: Text(Strings.signup_with_facebook,
                                      style: loginWithGoogleStyle),
                                )
                              ],
                            ),
                          ),
                        ),
                        if (Platform.isIOS&&isAppleLoginAvailable)
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
                                    child: Text("SIGNUP WITH APPLE",
                                        style: loginWithGoogleStyle),
                                  )
                                ],
                              ),
                            ),
                          ),
                        Container(
                          child: Row(children: <Widget>[
                            Container(
                              padding:  AppUtility().isTablet(context) ?EdgeInsets.only(top: dontHaveAccTopPadding)  : EdgeInsets.fromLTRB(
                                  textfieldLeftPadding, dontHaveAccTopPadding, 5, 0),
                              child: Text(
                                Strings.alreadyamember,
                                style: dontHaveAccStyle,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {

                                pushNewScreen(
                                  context,
                                  screen: HomeBottomBarScreen(3),
                                  withNavBar: true,
                                  // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Container(
                                padding:  AppUtility().isTablet(context) ?EdgeInsets.only(top: dontHaveAccTopPadding)  : EdgeInsets.fromLTRB(
                                    0, dontHaveAccTopPadding, 0, 0),
                                child: Text(Strings.login, style: signUpGreenStyle),
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
                              pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: AppUtility().isTablet(context) ?EdgeInsets.only(top: privacyTopPadding)  :EdgeInsets.fromLTRB(textfieldLeftPadding,
                                privacyTopPadding, 0, loginurAccountTopPadding),
                            child: Text(
                              Strings.privacy_policy,
                              style: privacyPolicyStyle,
                            ),
                          ),
                        ),
                      ],
                    )
                  )


                ],
              ),
            )),
      ),
    );
  }
}
