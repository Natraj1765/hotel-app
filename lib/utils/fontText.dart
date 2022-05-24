// placeholder:
//
// TextStyle(
// fontSize: 13.0,
// color: Uicolors.desText,
// fontFamily: 'Popins-light'
// )
//
// placeholder:
//
// TextStyle(
// fontSize: 13.0,
// color: Uicolors.titleText,
// fontFamily: 'Popins-light'
// )
//
// menu bottom 10 popins light
//themecolor
//left,right 0.5,0.5 need to send 0.05
//top 0.7
//height
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/FontSize.dart' as fontSize;

//borderRadius
var containerBorderRadius = 15.0;
var fieldBorderRadius = 6.0;

var boxShadow = [
  BoxShadow(
    color: Uicolors.desText,
    blurRadius: 5.0,
  ),
];

var roomShadow = [
  BoxShadow(
    color: Uicolors.desText,
    blurRadius: 5.0,
  ),
];

var border = Border.all(color: Uicolors.borderColor, width: 1);
var bottomBorder = Border.all(color: Colors.black, width: 1);



var textFieldShadow = [
  BoxShadow(
    color: Uicolors.desText,
    blurRadius: 2.0,
  ),
];
late Function hp;
late var iconSize;
late var backIconSize;
late var infoIconSize;
late var menuIconSize;

var textFieldIconSize0 = 20.0;
late var textFieldIconSize; //= 28.0;
var textFieldIconSize1 = 30.0;
var textFieldIconSize2 = 35.0;
late var textFieldIconSize40;
late var textFieldIconSize16;
late var textFieldIconSize17;
late var amentitiesSize;
late var textScaleFactor;

Map<double, int> fontSizeMap = {
  0.7: 5,
  0.9: 8,
  1: 10,
  1.2: 11,
  1.4: 12,
  1.5: 13,
  1.6: 14,
  1.7: 15,
  1.8: 16,
  1.9: 17,
  2: 18,
  2.5: 20,
  2.6: 22,
  2.7: 25,
  2.9: 27,
  3.0: 28,
  3.3: 30,
  4.4: 40,
  5.4: 50,
  5.9: 55,
  6.4: 58,
  6.9: 60,
  8.9: 80
};

getContext(Size size,BuildContext context,var textScaleFactor) {
   // print("daatartttttttttttttttttttt ${textScaleFactor}");
    textScaleFactor = textScaleFactor;
  hp = Screen(size,MediaQuery.of(context).orientation).hp;
  iconSize = hp(fontSize.FontSize.size25);
  backIconSize = hp(fontSize.FontSize.size15);
  infoIconSize = hp(fontSize.FontSize.size30);
  textFieldIconSize = hp(fontSize.FontSize.size28);
  textFieldIconSize40 = hp(fontSize.FontSize.size40);
  menuIconSize = hp(fontSize.FontSize.size22);
  amentitiesSize = hp(fontSize.FontSize.size27);
  textFieldIconSize17=hp(fontSize.FontSize.size17);
  textFieldIconSize16=hp(fontSize.FontSize.size16);
}

class Screen {
  Size screenSize;
  var orientation;

  Screen(this.screenSize,this.orientation);

  double wp(percentage) {
    return percentage / 100 * screenSize.width;
  }

  double hp(percentage) {
    int actualSize = fontSizeMap[percentage]!;
    var widthVal;
        if (orientation == Orientation.landscape) {
          widthVal = screenSize.height + 48.0;
        } else {
          widthVal = screenSize.width;
        }
    double val = screenSize.width>600?(widthVal / 80.5 * percentage):(screenSize.width/ 46.5*percentage);
    // if(val  < (actualSize - 2) ){
    //    val = actualSize - 2;
    // }
    return val;
  }
}

TextStyle headingStyle = TextStyle(
  color: Uicolors.loginBoldText,
  fontSize: hp(fontSize.FontSize.size20),
  fontFamily: 'Popins-medium',
  //  fontWeight: FontWeight.w600
);
TextStyle textFieldStyle = TextStyle(
    inherit: true,
    color: Uicolors.titleText,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-light');
TextStyle placeHolderStyle = TextStyle(
    inherit: true,
    color: Uicolors.placeholderTextColor,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-light');
TextStyle buttonStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Popins-bold',
    fontSize: hp(fontSize.FontSize.size18));
TextStyle bottomStyle = TextStyle(
    fontSize: hp(fontSize.FontSize.size12),
    fontFamily: 'Popins-light',
    color: Uicolors.desText);
TextStyle selectedBottomStyle = TextStyle(
    fontSize: hp(fontSize.FontSize.size12),
    fontFamily: 'Popins-light',
    color: Uicolors.buttonbg);

//confirmSearchpage
TextStyle backToSearchStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontFamily: 'Popins-regular',
    fontSize: hp(fontSize.FontSize.size14));
TextStyle numAdultStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size16),
  fontFamily: 'Popins-regular',
  color: Uicolors.buttonbg,
  fontWeight: FontWeight.normal,
);
TextStyle adultStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size15),
  fontFamily: 'Popins-light',
  color: Uicolors.titleText,
);
TextStyle perRoomStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size13),
  fontFamily: 'Popins-light',
  color: Uicolors.desText,
);
TextStyle adultLengthStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size15),
  fontFamily: 'Popins-bold',
  color: Uicolors.buttonbg,
);
TextStyle confirmButtonStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size16),
  fontFamily: 'Popins-bold',
  color: Colors.white,
);
TextStyle roomStyle = new TextStyle(
  fontSize: hp(fontSize.FontSize.size13),
  fontFamily: 'Popins-light',
  color: Uicolors.desText,
);
TextStyle childrenStyle = new TextStyle(
  fontSize: hp(fontSize.FontSize.size15),
  fontFamily: 'Popins-light',
  color: Uicolors.titleText,
);
TextStyle dropDownStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontFamily: 'Popins-regular',
    fontSize: hp(fontSize.FontSize.size15));
TextStyle hintStyle = TextStyle(
    color: Colors.black45,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-light');
TextStyle dropTextStyle = TextStyle(
    fontSize: hp(fontSize.FontSize.size15),
    fontFamily: 'Popins-regular',
    color: Colors.grey);

//searchPage
TextStyle backStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size16),
);
TextStyle selectedDateStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size14),
// fontWeight: FontWeight.w700,
    fontFamily: 'Popins-bold');
TextStyle sortTitleStyle = TextStyle(
    color: Uicolors.bottomTextColor,
    fontSize: hp(fontSize.FontSize.size14),
    //  fontWeight: FontWeight.w500,
    fontFamily: 'Popins-regular');
TextStyle errorMessageStyle = TextStyle(
  color: Uicolors.buttonbg,
  fontSize: hp(fontSize.FontSize.size18),
  fontFamily: 'Popins-bold',
);
TextStyle avgRatingTextStyle = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle overallRatingStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size15),
);
TextStyle hotelNameStyle = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-medium',
  fontSize: hp(fontSize.FontSize.size20),
);
TextStyle descTextStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size15),
);
TextStyle showAllAmenitiesStyle = TextStyle(
  color: Uicolors.viewMoreText,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle priceFromStyle = TextStyle(
  color: Uicolors.desText,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle discountCrossStyle = TextStyle(
    color: Uicolors.desText,
    fontFamily: 'Popins-regular',
    fontSize: hp(fontSize.FontSize.size16),
    decoration: TextDecoration.lineThrough,
    decorationColor: Colors.red,
    decorationThickness: 3.0);
TextStyle discountWhiteCrossStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Popins-regular',
    fontSize: hp(fontSize.FontSize.size16),
    decoration: TextDecoration.lineThrough,
    decorationColor: Colors.red,
    decorationThickness: 3.0);
TextStyle priceTextStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontFamily: 'Popins-bold',
    fontSize: hp(fontSize.FontSize.size25));
TextStyle priceTextBlackStyle = TextStyle(
    color: Uicolors.bottomTextColor,
    fontFamily: 'Popins-bold',
    fontSize: hp(fontSize.FontSize.size25));
TextStyle priceTextWhiteStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Popins-bold',
    fontSize: hp(fontSize.FontSize.size25));
TextStyle priceTextGreyStyle = TextStyle(
    color: Uicolors.desText,
    fontFamily: 'Popins-bold',
    fontSize: hp(fontSize.FontSize.size25));
TextStyle dollerStyle = TextStyle(
  color: Uicolors.buttonbg,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle dollerBlackStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle dollerWhiteStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle dollarGreyStyle = TextStyle(
  color: Uicolors.desText,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size14),
);

TextStyle usDollarTextStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size30),
  fontFamily: 'Popins-bold',
  color: Colors.white,
);
//overview
TextStyle welcomJazStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-bold');
TextStyle timeDetailsStyle = TextStyle(
    color: Colors.white,
    fontSize: hp(fontSize.FontSize.size13),
    fontFamily: 'Popins-light');
TextStyle tabToModifyStyle = TextStyle(
    color: Colors.white,
    decoration: TextDecoration.underline,
    decorationThickness: 4,
    fontSize: hp(fontSize.FontSize.size15),
    //  fontWeight: FontWeight.w500,
    fontFamily: 'Popins-medium');
TextStyle viewReviewStyle = TextStyle(
  color: Uicolors.viewMoreText,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle locationStyle = TextStyle(
  color: Uicolors.desText,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle distanceStyle = TextStyle(
    color: Uicolors.desText,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-regular');
TextStyle checkInStyle = TextStyle(
    color: Uicolors.desText,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-regular');
TextStyle timeStyle = TextStyle(
    color: Uicolors.titleText,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-bold');
TextStyle expansionTitleStyle = TextStyle(
    color: Uicolors.titleText,
    fontFamily: 'Popins-bold',
    fontSize: hp(fontSize.FontSize.size18));
//roomStyle
TextStyle luxuriousStyle = TextStyle(
    color: Uicolors.titleText,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-medium');
TextStyle filterStyle = TextStyle(
  color: Uicolors.backText,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size12),
);

TextStyle selectThisButtonStyle = TextStyle(
  color: Uicolors.buttonbg,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size16),
);
TextStyle selectThisButtonWhiteStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size16),
);
TextStyle bookStrStyle = TextStyle(
  color: Uicolors.buttonbg,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size14),
);

TextStyle bestRateStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size14),
);

TextStyle exclTaxStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size12),
);
TextStyle exclTaxWhiteStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size12),
);
//login
TextStyle loginAccountStyle = TextStyle(
  color: Uicolors.loginBoldText,
  fontSize: hp(fontSize.FontSize.size25),
  fontFamily: 'Popins-medium',
  //  fontWeight: FontWeight.w600
);

TextStyle exploreOfferStyle = TextStyle(
  color: Colors.white,
  fontSize: hp(fontSize.FontSize.size20),
  fontFamily: 'Popins-regular',
  //  fontWeight: FontWeight.w600
);
TextStyle emailTextStyle = TextStyle(
  color: Uicolors.titleText,
  fontSize: hp(fontSize.FontSize.size16),
  fontFamily: 'Popins-light',
  // fontWeight: FontWeight.w300,
);
TextStyle emailHintStyle = TextStyle(
  color: Uicolors.placeholderTextColor,
  fontSize: hp(fontSize.FontSize.size16),
  fontFamily: 'Popins-light',
  // fontWeight: FontWeight.w300,
);
TextStyle forgetpassStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-regular');
TextStyle orTextStyle = TextStyle(
    color: Uicolors.desText,
    fontSize: hp(fontSize.FontSize.size18),
    fontFamily: 'Popins-regular');
TextStyle loginWithGoogleStyle = TextStyle(
  color: Uicolors.backText,
  fontFamily: 'Popins-light',
  fontSize: hp(fontSize.FontSize.size15),
);
TextStyle dontHaveAccStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontSize: hp(fontSize.FontSize.size16),
  fontFamily: 'Popins-light',
);
TextStyle signUpGreenStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-light');
TextStyle privacyPolicyStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-regular');
//forgetpassword

TextStyle backSigninGreenStyle = TextStyle(
  color: Uicolors.buttonbg,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size16),
);
TextStyle privacyTextStyle = TextStyle(
    color: Uicolors.desText,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-regular');
TextStyle privacyTitleTextStyle = TextStyle(
  color: Uicolors.loginBoldText,
  fontSize: hp(fontSize.FontSize.size18),
  fontFamily: 'Popins-regular',
  fontWeight: FontWeight.w600,
);
//bookingstart
TextStyle bookingTitleStyle = TextStyle(
  color: Uicolors.buttonbg,
  fontFamily: 'Popins-bold',
  // fontWeight: FontWeight.w100,
  fontSize: hp(fontSize.FontSize.size18),
);
TextStyle baseRateStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle baseRateWhiteStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size14),
);
TextStyle alreadyMemberStyle = TextStyle(
  color: Uicolors.titleText,
  //  letterSpacing: 0.5,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size20),
);
TextStyle greenColorButtonStyle = TextStyle(
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-bold',
    color: Uicolors.buttonbg);
TextStyle grayColorButtonStyle = TextStyle(
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-bold',
    color: Uicolors.placeholderTextColor);
TextStyle summaryTextStyle = TextStyle(
    color: Uicolors.titleText,
    fontSize: hp(fontSize.FontSize.size18),
    fontFamily: 'Popins-bold');
TextStyle numberDayStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-regular');
TextStyle bookDetStyle = TextStyle(
    color: Uicolors.titleText,
    fontSize: hp(fontSize.FontSize.size15),
    fontFamily: 'Popins-regular');
// TextStyle modifybtnStyle = TextStyle(
//   color: Uicolors.buttonbg,
//   fontFamily: 'Popins-bold',
//   fontSize: hp(fontSize.FontSize.size14),
// );
TextStyle modifybtnStyle = TextStyle(
    color: Uicolors.buttonbg,
    decoration: TextDecoration.underline,
    decorationThickness: 4,
    fontSize: hp(fontSize.FontSize.size15),
    //  fontWeight: FontWeight.w500,
    fontFamily: 'Popins-regular');
TextStyle roomStrStyle = TextStyle(
    color: Uicolors.backText,
    fontSize: hp(fontSize.FontSize.size15),
    fontFamily: 'Popins-regular');
TextStyle roomNumberStyle =TextStyle(
    color: Uicolors.titleText,
    fontSize: hp(fontSize.FontSize.size18),
    fontFamily: 'Popins-semibold');
TextStyle roomNameStyle = TextStyle(
    color: Uicolors.bottomTextColor,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-regular');
TextStyle roomBookStyle = TextStyle(
    color: Uicolors.titleText,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-regular');
TextStyle guestTextFieldStyle = TextStyle(
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-light',
    color: Uicolors.titleText);
TextStyle guestHintTextFieldStyle = TextStyle(
    fontSize: hp(fontSize.FontSize.size16),
    color: Uicolors.placeholderTextColor,
    fontFamily: 'Popins-light');
TextStyle saluDropTextStyle = TextStyle(
    fontSize: hp(fontSize.FontSize.size16),
    color: Uicolors.titleText,
    fontFamily: 'Popins-light');
TextStyle applyTextStyle = TextStyle(
    color: Uicolors.desText,
    fontSize: hp(fontSize.FontSize.size14),
    // fontWeight: FontWeight.bold,
    fontFamily: 'Popins-light');
TextStyle passwordHintStyle = TextStyle(
  color: Uicolors.titleText,
  fontSize: hp(fontSize.FontSize.size16),
  fontFamily: 'Popins-light',
  // fontWeight: FontWeight.w300,
);
TextStyle saveCardStyle = TextStyle(
    color: Uicolors.desText,
    fontSize: hp(fontSize.FontSize.size14),
    // fontWeight: FontWeight.bold,
    fontFamily: 'Popins-light');
TextStyle payNowStyle = TextStyle(
    color: Uicolors.bottomTextColor,
    fontSize: hp(fontSize.FontSize.size15),
    fontFamily: 'Popins-light');

TextStyle creditCardTextStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size13),
    fontFamily: 'Popins-regular');
TextStyle policyBtnStyle = TextStyle(
    color: Uicolors.titleText,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-regular');
TextStyle regulationStrStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-regular');
TextStyle noteEntryStyle = TextStyle(
    letterSpacing: 0.5,
    height: 1.2,
    color: Uicolors.bottomTextColor,
    fontSize: hp(fontSize.FontSize.size15),
    fontFamily: 'Popins-light');
TextStyle informationStyle = TextStyle(
    height: 1.2,
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-regular');
TextStyle dataTransStyle = TextStyle(
    letterSpacing: 0.15,
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size12),
    fontFamily: 'Popins-regular');
TextStyle afterCompletStyle = TextStyle(
    // height: 1.2 ,
    letterSpacing: 0.1,
    color: Uicolors.bottomTextColor,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-light');
TextStyle contactNumberStyle = TextStyle(
    height: 1.2,
    //   letterSpacing: 0.4,
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-light');
//amenities
TextStyle amenitiesTextStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-light');

TextStyle destinyContentTextStyle = TextStyle(
  color: Uicolors.dropdowng,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size12),
);

TextStyle destinytitleTextStyle = TextStyle(
  color: Uicolors.dropdowng,
  fontFamily: 'Popins-semibold',
  fontSize: hp(fontSize.FontSize.size20),
);

TextStyle destinydollerTextStyle = TextStyle(
  color: Uicolors.dropdowng,
  fontFamily: 'Popins-semibold',
  fontSize: hp(fontSize.FontSize.size14),
);

TextStyle whatLookingTextStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size16),
);

TextStyle destinationNameStyle = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-medium',
  fontSize: hp(fontSize.FontSize.size18),
);
TextStyle fieldTextStyle = TextStyle(
    color: Uicolors.titleText,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-regular');

TextStyle viewMore = TextStyle(
  color: Uicolors.viewMoreText,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size13),
);
TextStyle findMatchTextStyle = TextStyle(
  color: Uicolors.buttonbg,
  fontFamily: 'Popins-medium',
  fontSize: hp(fontSize.FontSize.size16),
);
TextStyle checkinDayTextStyle = TextStyle(
    color: Uicolors.loginBoldText,
    fontSize: hp(fontSize.FontSize.size30),
    fontFamily: 'Popins-bold');
TextStyle checkInDayStyle = TextStyle(
    color: Uicolors.bottomTextColor,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-light');
TextStyle checkInDayStyle1 = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size15),
    fontFamily: 'Popins-bold');

TextStyle numberOfNightStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size12),
  fontFamily: 'Popins-light',
  color: Colors.white,
);

TextStyle cellStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size13),
  fontFamily: 'Popins-light',
  color: Uicolors.titleText,
);
//Search page
TextStyle priceHighGreenTextStyle = TextStyle(
  color: Uicolors.buttonbg,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size16),
);
TextStyle subTxtTextStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-regular');

TextStyle checkBoxListTextStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size16),
    fontFamily: 'Popins-light');

TextStyle radioButtonContextTextStyle = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-light',
  fontSize: hp(fontSize.FontSize.size16),
);

TextStyle currenciesTextStyle = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size12),
);

TextStyle searchTextStyle = TextStyle(
    color: Uicolors.greyText,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-light');

TextStyle meterSqureStyle = TextStyle(
  color: Uicolors.desText,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size8),
);
TextStyle filterTextStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size16),
);

TextStyle monthTextStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size16),
  fontFamily: 'Popins-bold',
  color: Uicolors.buttonbg,
);
TextStyle selectedCellTextStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size13),
  fontFamily: 'Popins-light',
  color: Colors.white,
);
TextStyle dayCellTextStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size14),
  fontFamily: 'Popins-light',
  color: Uicolors.bottomTextColor,
);

//Review Page

TextStyle tripAdvisorTextStyle = TextStyle(
    color: Uicolors.loginBoldText,
    fontSize: hp(fontSize.FontSize.size12),
    fontFamily: 'Popins-semiBold');

TextStyle subTitleTextStyle = TextStyle(
  color: Uicolors.viewMoreText,
  fontFamily: 'Popins-Bold',
  fontSize: hp(fontSize.FontSize.size13),
);

//profile
TextStyle myAccountTextStyle = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size20),
);

TextStyle editProfile = TextStyle(
  color: Uicolors.buttonbg,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size14),
);

TextStyle editWhiteProfile = TextStyle(
  color: Colors.white,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size15),
);
TextStyle profileContentsTextStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size15),
);

TextStyle accountHolderName = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size20),
);

TextStyle initialNameStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Popins-regular',
    fontSize: hp(fontSize.FontSize.size20));

TextStyle contentsListTextStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size16),
);

TextStyle fromAndToTextStyle = TextStyle(
  color: Uicolors.fromAndToColors,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size14),
);
//trip detail
TextStyle conformationNumberStyle = TextStyle(
  color: Uicolors.buttonbg,
  fontFamily: 'Popins-semibold',
  // fontWeight: FontWeight.w100,
  fontSize: hp(fontSize.FontSize.size18),
);

TextStyle myTripDetails = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-medium',
  fontSize: hp(fontSize.FontSize.size14),
);

TextStyle cancelButtonTextStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-light');

TextStyle ratePlanDesc = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size16),
);

TextStyle incTaxTextStyle = TextStyle(
  color: Uicolors.desText,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size10),
);
//about us style

TextStyle aboutUsTextStyle = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-semibold',
  fontSize: hp(fontSize.FontSize.size16),
);
TextStyle aboutUsContainerTitleStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size18),
  fontFamily: 'Popins-semibold',
  color: Colors.white,
);

TextStyle contactUsTitles = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-semibold',
  // fontWeight: FontWeight.w100,
  fontSize: hp(fontSize.FontSize.size18),
);

//Map
TextStyle closeMapButtonStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size15),
  fontFamily: 'Popins-bold',
  color: Colors.white,
);

TextStyle roomUnSelectTopStyle =
    TextStyle(color: Colors.black, fontFamily: 'Popins-bold', fontSize: hp(fontSize.FontSize.size16));

TextStyle roomSelectTopStyle =
    TextStyle(color: Colors.white, fontFamily: 'Popins-bold', fontSize: hp(16));

Style h1Style = Style(
    fontFamily: 'Popins-regular',
    fontSize: FontSize(hp(fontSize.FontSize.size15)),
    color: Uicolors.bottomTextColor
);

Style paraStyle = Style(
    fontSize: FontSize(hp(fontSize.FontSize.size15)),
    fontFamily: 'Popins-regular',
    color: Uicolors.bottomTextColor,
    padding: EdgeInsets.only(left: 0, bottom: 0),
    margin: EdgeInsets.only(left: 0,top: 0));


Style listStyle = Style(
    fontSize: FontSize(hp(fontSize.FontSize.size15)),
    fontFamily: 'Popins-regular',
    color: Uicolors.bottomTextColor,
    padding: EdgeInsets.only(bottom: 3,left: 0,top:0),
margin:EdgeInsets.only(top:3));

TextStyle bookingStatusStyle = TextStyle(
  fontSize: hp(fontSize.FontSize.size14),
  fontFamily: 'Popins-light',
  color: Colors.white,
);

TextStyle myBookingHeaderTextStyle = TextStyle(
  color: Uicolors.titleText,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size16),
);
TextStyle myBookingHeaderSubTextStyle = TextStyle(
  color: Uicolors.bottomTextColor,
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size16),
);
TextStyle errorTextStyle = TextStyle(
  fontFamily: 'Popins-regular',
  fontSize: hp(fontSize.FontSize.size13),
);
TextStyle aboutUsHeaderContent = TextStyle(
  color: Colors.white,
  fontFamily: 'Popins-bold',
  fontSize: hp(fontSize.FontSize.size20),
);

TextStyle dinnTextStyle = TextStyle(
    color: Uicolors.buttonbg,
    fontFamily: 'Popins-medium',
    fontSize: hp(fontSize.FontSize.size20));

TextStyle memberOfferText = TextStyle(
    color: Colors.black,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-light');

TextStyle removeButtonStyle = TextStyle(
    color: Colors.red,
    decoration: TextDecoration.underline,
    decorationThickness: 4,
    fontSize: hp(fontSize.FontSize.size15),
    //  fontWeight: FontWeight.w500,
    fontFamily: 'Popins-regular');

TextStyle searchOfferText = TextStyle(
    color: Colors.black,
    fontSize: hp(fontSize.FontSize.size14),
    fontFamily: 'Popins-bold');