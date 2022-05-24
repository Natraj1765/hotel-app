import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/models/firebaseintegrate.dart';
import 'package:jaz_app/screens/homebottombar.dart';
import 'package:jaz_app/screens/onboarding/privacypolicy.dart';
import 'package:jaz_app/screens/onboarding/signin.dart';
import 'package:jaz_app/screens/onboarding/signup.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:toast/toast.dart';

class ForgetPassword extends StatefulWidget {
  final String redirectName;
  ForgetPassword(this.redirectName);
  _ForgetPasswordPage createState() => _ForgetPasswordPage();
}

class _ForgetPasswordPage extends State<ForgetPassword> {
  TextEditingController _emailTxt = TextEditingController();
  AppUtility appUtility = AppUtility();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    appUtility = AppUtility();
  }

  @override
  Widget build(BuildContext context) {
    final double overAllHeight = MediaQuery.of(context).size.height;
    final double overAllWidth = MediaQuery.of(context).size.width;

    var buttonHeight = overAllHeight *  0.055;
    var loginurAccountTopPadding = MediaQuery.of(context).size.height * 0.03;
    var loginUrAccountLeftpadding = MediaQuery.of(context).size.width * 0.05;
    var textfieldLeftPadding = MediaQuery.of(context).size.width * 0.055;
    var textfieldTopPadding =  MediaQuery.of(context).size.height * 0.025;
    var textFieldHeight =  overAllHeight * 0.055;
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
        toolbarHeight: AppUtility().isTablet(context)?80:AppBar().preferredSize.height,
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
                      pushNewScreen(
                        context,
                        screen:HomeBottomBarScreen(3),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
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
                      pushNewScreen(
                        context,
                        screen: HomeBottomBarScreen(3),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(Strings.backtosign,
                          style: backSigninGreenStyle),
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
                    width: AppUtility().isTablet(context)?180:120,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:Container(
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
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(
                    loginUrAccountLeftpadding,
                    loginurAccountTopPadding,
                    loginUrAccountLeftpadding,
                    0),
                child: Text(
                  Strings.forgetyourpassword_new,
                  style: loginAccountStyle,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      textfieldLeftPadding,
                      textfieldTopPadding,
                      textfieldLeftPadding,
                      0),
                  child: Container(
                      alignment: Alignment.center,
                      height: textFieldHeight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:border,
                        borderRadius: new BorderRadius.circular(textFieldBorderRadius),
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(
                            left: 15, right: 15,
                            //      top: 5
                          ),
                          child: TextFormField(
                            // inputFormatters: [
                            //   LengthLimitingTextInputFormatter(Uicolors.MAXLENGTH_TEXT),
                            // ],
                              style: emailTextStyle,
                              controller: _emailTxt,
                              /* validator: MultiValidator([
                              RequiredValidator(errorText: "* Required"),
                              EmailValidator(errorText: "Enter valid email id"),
                            ]),*/
                              cursorColor: Uicolors.titleText,
                              decoration: InputDecoration(
                                  isCollapsed: true,
                                  hintStyle: emailHintStyle,
                                  border: InputBorder.none,
                                  hintText: Strings.youremail
                                // labelText: Strings.youremail,
                              ))))),
              Container(
                padding: AppUtility().isTablet(context)
                    ? EdgeInsets.all(MediaQuery.of(context).size.width * 0.05)
                    : EdgeInsets.only(top: textfieldTopPadding),
                child: FlatButton(
                  minWidth: buttonWidth,
                  height: buttonHeight,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular((buttonHeight)/2),
                  ),
                  onPressed: () {
                    FocusManager.instance.primaryFocus!.unfocus();
                    if (_emailTxt.text.toString().isEmpty) {
                      appUtility.showToastView("Please enter email id",context);
                      // ToastView.createView(
                      //     "Please enter email id",
                      //     context,
                      //     Toast.LENGTH_LONG,
                      //     Toast.BOTTOM,
                      //     Uicolors.buttonbg,
                      //     Colors.white,
                      //     3,
                      //     null);
                    } else if (!appUtility
                        .validateEmail(_emailTxt.text.toString())) {
                      appUtility.showToastView("Please enter valid email id",context);

                      // ToastView.createView(
                      //     "Please enter valid email id",
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
                          .sendPasswordResetEmail(_emailTxt.text)
                          .then((value) async {
                        appUtility.showToastView("Email sent successfully",context);

                        // ToastView.createView(
                        //     "Email sent successfully",
                        //     context,
                        //     Toast.LENGTH_LONG,
                        //     Toast.BOTTOM,
                        //     Uicolors.buttonbg,
                        //     Colors.white,
                        //     3,
                        //     null);
                        EasyLoading.dismiss();
                        // await new Future.delayed(const Duration(milliseconds: 500));
                        // AppUtility().dismissDialog(dialogContext!);
                        setState(() {
                          _emailTxt.text = "";
                        });
                      }).catchError((error) async {
                        appUtility.showToastView("Email doesn't exist",context);

                        // ToastView.createView(
                        //     "Email doesn't exist",
                        //     context,
                        //     Toast.LENGTH_LONG,
                        //     Toast.BOTTOM,
                        //     Uicolors.buttonbg,
                        //     Colors.white,
                        //     3,
                        //     null);
                        EasyLoading.dismiss();
                        // await new Future.delayed(const Duration(milliseconds: 500));
                        // AppUtility().dismissDialog(dialogContext!);
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            textfieldLeftPadding,
                            dontHaveAccTopPadding,
                            MediaQuery.of(context).size.width * 0.01,
                            0),
                        child: Text(
                            Strings.donthaveaccount,
                            style: dontHaveAccStyle),
                      ),
                      GestureDetector(
                        onTap: () {
                          pushNewScreen(
                            context,
                            screen: SignUp(widget.redirectName),
                            withNavBar:
                            true, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0,
                              dontHaveAccTopPadding, 0, 0),
                          child: Text(
                            Strings.sign_up,
                            style: signUpGreenStyle,
                          ),
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
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(
                      textfieldLeftPadding,
                      privacyTopPadding,
                      textfieldLeftPadding,
                      0),
                  child: Text(
                    Strings.privacy_policy,
                    style: privacyPolicyStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        )

      ),
    );
  }
}
