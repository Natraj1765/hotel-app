import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:intl/intl.dart';
import 'package:jaz_app/models/roommodel.dart';
import 'package:jaz_app/utils/GlobalStates.dart';
import 'package:jaz_app/utils/colors.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:jaz_app/utils/http_client.dart';
import 'package:jaz_app/utils/FontSize.dart' as fontSize;
import 'package:jaz_app/utils/colors.dart' as Uicolors;
//import 'package:toast/toast.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optimized_cached_image/optimized_cached_image.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/user/user.dart';
import '../utils/navigatorService.dart';

class AppUtility {
  // BuildContext? dialogContext;
  static DefaultCacheManager _instance = DefaultCacheManager();


  DefaultCacheManager getInstance(){
    return _instance;
  }


  Widget firstNameWidget(boxHeight, borderRadius, topPadding, leftPadding,context) {
    var _firstName = TextEditingController();
    return Padding(
      child:
      Container(
          alignment: Alignment.centerLeft,
          height: boxHeight,
          //  width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(borderRadius),
            color: Colors.white,
          ),
          child: Padding(
            child: TextFormField(
              style: guestTextFieldStyle,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _firstName,
              cursorColor: Uicolors.titleText,
              decoration: InputDecoration(
                isCollapsed: true,
                errorStyle: errorTextStyle,
                hintText: Strings.firstStr,
                hintStyle: guestHintTextFieldStyle,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                //   contentPadding: EdgeInsets.only(bottom: 5),
              ),
              keyboardType: TextInputType.name,
              inputFormatters: [
                FilteringTextInputFormatter.deny(
                  RegExp(emojiRegexp),
                ), new LengthLimitingTextInputFormatter(
                    30),
              ],
              validator: (args) {
                if (args!.trim().toString().isNotEmpty&& args.trim().toString().length<=30) {
                  return null;
                }else if (args.toString().length>30){
                  return 'First Name should not exceed 30 characters';
                } else {
                  return 'First Name is required';
                }
              },
            ),
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              // top:
              //     MediaQuery.of(context).size.height * 0.02
            ),
          )),
      padding: EdgeInsets.only(
          top: topPadding, left: leftPadding, right: leftPadding),
    );
  }

  Widget lastNameWidget(boxHeight, borderRadius, topPadding, leftPadding,context) {
    var _lastName = TextEditingController();

    return Padding(
      child: Container(
          alignment: Alignment.centerLeft,
          height: boxHeight,
          //   width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(borderRadius),
            color: Colors.white,
          ),
          child: Padding(
            child: TextFormField(
              style: guestTextFieldStyle,
              scrollPadding: EdgeInsets.only(bottom: 40),
              autovalidateMode:  AutovalidateMode.onUserInteraction,
              controller: _lastName,
              cursorColor: Uicolors.titleText,
              // cursorHeight: 18,
              decoration: InputDecoration(
                // errorStyle: TextStyle(height: 0.5),
                isCollapsed: true,
                errorStyle: errorTextStyle,
                fillColor: Uicolors.titleText,
                hintText: Strings.lastStr,
                hintStyle: guestHintTextFieldStyle,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                //contentPadding: EdgeInsets.only(bottom: 5),
              ),
              keyboardType: TextInputType.name,
              inputFormatters: [
                FilteringTextInputFormatter.deny(
                  RegExp(emojiRegexp),
                ), new LengthLimitingTextInputFormatter(
                    30),
              ],
              validator: (args) {
                if (args!.trim().toString().isNotEmpty&& args.trim().toString().length<=30) {
                  return null;
                } else if (args.toString().length>30){
                  return 'Last Name should not exceed 30 characters';
                }else {
                  return 'Last Name is required';
                }
              },
            ),
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              // top:
              //     MediaQuery.of(context).size.height * 0.01
            ),
          )),
      padding: EdgeInsets.only(
          top: topPadding, left: leftPadding, right: leftPadding),
    );
  }

  showProgressDialog(BuildContext context,
      {required String? type, required Function(BuildContext) dismissDialog}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          //dialogContext = context;
          dismissDialog.call(context);
          return WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: Center(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                          child: Column(
                        children: [
                          // CircularProgressIndicator(
                          //   backgroundColor: Colors.transparent,
                          //   valueColor: AlwaysStoppedAnimation(
                          //       Theme.of(context).primaryColor),
                          // ),
                          Image.asset(
                            "assets/images/hotal_circle_loader_icon.gif",
                            height: 100.0,
                            width: 100.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 300,
                            margin: EdgeInsets.only(top: type != null ? 10 : 0),
                            child: type != null
                                ? new Text(type,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .merge(TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0)))
                                : Container(),
                          )
                        ],
                      )),
                    ],
                  ),
                  height: 100.0, //80.0
                  width: 100.0,
                ),
              ));
        });
  }

  dismissDialog(BuildContext dialogContext) {
    Navigator.pop(dialogContext);
  }

  Future<bool> onWillPop(BuildContext context) async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit the App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              TextButton(
                onPressed: () =>
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  Future<bool> onWillLoginPop(BuildContext context) async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              Strings.appName,
              style: expansionTitleStyle,
            ),
            //  content: Text('Do you want to Favorites & UnFavorites needs to login. Proceed to login?'),
            content: Text(
              'Please login to shortlist the hotel',
              style: overallRatingStyle,
            ),
            actions: <Widget>[
              // TextButton(
              //   onPressed: () => Navigator.of(context).pop(false),
              //   child: Text('No'),
              // ),
              TextButton(
                onPressed: () {
                  //SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  Navigator.of(context).pop();
                },
                child: Text(
                  'OK',
                  style: welcomJazStyle,
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  bool validateEmail(String value) {
    String pattern =
        r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$";
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validatePassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }
  String getNumberOfNight(startDate,endDate){
    final DateFormat startFormatter = DateFormat('EEE dd MMM');
    final String startFormatted = startFormatter.format(startDate);
    final String endFormatted = startFormatter.format(endDate);
    final difference = endDate.difference(startDate).inDays;
    return difference.toString();
  }
  String getNumberOfPerson(List<Room> confirmedRoomList){
    int totalPerson =0;
    confirmedRoomList.forEach((element) {
      totalPerson += element.adultList.length + element.childList.length;
    });
    return totalPerson.toString();
  }

  String getDateDiff(startDate, endDate) {
    final DateFormat startFormatter = DateFormat('EEE dd MMM');
    // final DateFormat endFormatter = DateFormat('EEE dd');
    final String startFormatted = startFormatter.format(startDate);
    final String endFormatted = startFormatter.format(endDate);
    final difference = endDate.difference(startDate).inDays;
    var nights = "";
    if (difference > 1) {
      nights = Strings.nights;
    } else {
      nights = Strings.night;
    }
    var selectedDate = startFormatted +
        " - " +
        endFormatted +
        " ( " +
        difference.toString() +
        " " +
        nights +
        " )";

    return selectedDate;
  }

  String getNumberOfDays(startDate, endDate, personList) {
    final DateFormat startFormatter = DateFormat('EEE dd MMM');
    final difference = endDate.difference(startDate).inDays;
    var nightStr = "";
    var roomStr = "";
    var adultStr = "";
    var childrenStr = "";
    int roomCount = 0;
    int adultCount = 0;
    int childCount = 0;
    for (int i = 0; i < personList.length; i++) {
      roomCount += 1;
      personList[i].adultList.forEach((adult) {
        adultCount += 1;
      });
      personList[i].childList.forEach((child) {
        childCount += 1;
      });
    }
    if (difference > 1) {
      nightStr = Strings.nights.toLowerCase();
    } else {
      nightStr = Strings.night.toLowerCase();
    }
    if (roomCount > 1) {
      roomStr = Strings.roomsStr.toLowerCase();
    } else {
      roomStr = Strings.roomStr.toLowerCase();
    }
    if (adultCount > 1) {
      adultStr = Strings.adults.toLowerCase();
    } else {
      adultStr = Strings.adult.toLowerCase();
    }
    if (childCount > 1) {
      childrenStr = Strings.childrensStr.toLowerCase();
    } else {
      childrenStr = Strings.childrenStr.toLowerCase();
    }
    return difference.toString() +
        " " +
        nightStr +
        ", " +
        adultCount.toString() +
        " " +
        adultStr +
        ", " +
        childCount.toString() +
        " " +
        childrenStr +
        ", " +
        roomCount.toString() +
        " " +
        roomStr.toLowerCase();
  }

  String getNumberOfAdults(adultList) {
    int adultCount = 0;
    for (int i = 0; i < adultList.length; i++) {
      adultList[i].adultList.forEach((adult) {
        adultCount += 1;
      });
    }
    return adultCount.toString();
  }

  String getNumberOfChildren(childrenList) {
    int childCount = 0;
    for (int i = 0; i < childrenList.length; i++) {
      childrenList[i].childList.forEach((adult) {
        childCount += 1;
      });
    }
    return childCount.toString();
  }

  String getSingleRoomDetails(startDate, endDate, personList) {
    final DateFormat startFormatter = DateFormat('EEE dd MMM');
    final difference = endDate.difference(startDate).inDays;
    var nightStr = "";
    var roomStr = "";
    var adultStr = "";
    var childrenStr = "";
    int roomCount = 0;
    int adultCount = 0;
    int childCount = 0;
    personList.adultList.forEach((adult) {
      adultCount += 1;
    });
    personList.childList.forEach((child) {
      childCount += 1;
    });

    if (difference > 1) {
      nightStr = Strings.nights.toLowerCase();
    } else {
      nightStr = Strings.night.toLowerCase();
    }
    if (roomCount > 1) {
      roomStr = Strings.roomsStr.toLowerCase();
    } else {
      roomStr = Strings.roomStr.toLowerCase();
    }
    if (adultCount > 1) {
      adultStr = Strings.adults.toLowerCase();
    } else {
      adultStr = Strings.adult.toLowerCase();
    }
    if (childCount > 1) {
      childrenStr = Strings.childrensStr.toLowerCase();
    } else {
      childrenStr = Strings.childrenStr.toLowerCase();
    }
    return difference.toString() +
        " " +
        nightStr +
        ", " +
        adultCount.toString() +
        " " +
        adultStr +
        ", " +
        childCount.toString() +
        " " +
        childrenStr +
        ", ";
  }

  confirmPop(
      BuildContext context, String title, String content) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => WillPopScope(
          onWillPop: () async => false,
          child:AlertDialog(
            title: Text(content),
            content: Text(title),
            actions: <Widget>[
              TextButton(
                onPressed: (){
                  if(Platform.isIOS){
                    AppUtility().launchURL("https://apps.apple.com/us/app/jaz-hotel-group/id1442801960");
                  }else{
                    AppUtility().launchURL("https://play.google.com/store/apps/details?id=com.travco.jaz");
                  }
                },
                child: Text('Update'),
              ),
            ],
          ),
        ));
  }

  String getSingleRoomAdults(adultList) {
    int adultCount = 0;
    adultList.adultList.forEach((adult) {
      adultCount += 1;
    });
    return adultCount.toString();
  }

  String getSingleRoomChildren(childrenList) {
    int childCount = 0;
    childrenList.childList.forEach((adult) {
      childCount += 1;
    });
    return childCount.toString();
  }


  Future<String> getHotelDescription(String hotelCrsCode) async {
    var response;
    var hotelDesc;
    HttpClient httpClient = HttpClient();
    HashMap<String, dynamic> params = HashMap();
    params.putIfAbsent("hotel_crs_code", () => hotelCrsCode);
    response = await httpClient.getData(params, "get_hotel_info", null);
    if (response.statusCode == 200 && json.decode(response.body) != null) {
      hotelDesc = (json
          .decode(response.body)['OTA_HotelDescriptiveInfoRS']
              ['HotelDescriptiveContents']['HotelDescriptiveContent']
              ['HotelInfo']['Descriptions']['Description']
              ["MultimediaDescriptions"]["MultimediaDescription"][0]
              ["TextItems"]["TextItem"]["Description"]["_text"]
          .toString());
      //   return (json.decode(response.body) as List).;
    } else {
      // If that call was not successful, throw an error.
      //   return [];
      hotelDesc = "";
    }
    return hotelDesc;
  }

  String getAmenities(String amenities) {
    var amenitiesImage = "";
    if ((amenities.toLowerCase().toString().contains("wifi"))) {
      amenitiesImage = "assets/images/wifi.png";
    } else if (amenities
        .toLowerCase()
        .toString()
        .contains("24-hour front desk")) {
      amenitiesImage = "assets/images/24hr-frontdesk.png";
    } else if (amenities.toLowerCase().toString().contains("view")) {
      amenitiesImage = "assets/images/view-layout-icon.png";
    } else if (amenities.toLowerCase().toString().contains("service")) {
      amenitiesImage = "assets/images/room-service.png";
    } else if (amenities.toLowerCase().toString().contains("phone") ||
        amenities.toLowerCase().toString().contains("mobile") ||
        amenities.toLowerCase().toString().contains("telephone")) {
      amenitiesImage = "assets/images/phone.png";
    } else if (amenities.toLowerCase().toString().contains("onsite laundry") ||
        amenities.toLowerCase().toString().contains("laundry")) {
      amenitiesImage = "assets/images/laundry-service.png";
    } else if (amenities
        .toLowerCase()
        .toString()
        .contains("24-hour security")) {
      amenitiesImage = "assets/images/24hrs-security.png";
    } else if (amenities.toLowerCase().toString().contains("breakfast") ||
        amenities.toLowerCase().toString().contains("complimentary")) {
      amenitiesImage = "assets/images/catering.png";
    } else if (amenities
        .toLowerCase()
        .toString()
        .contains("cable television")) {
      amenitiesImage = "assets/images/cable-tv.png";
    } else if (amenities.toLowerCase().toString().contains("outdoor pool")) {
      amenitiesImage = "assets/images/outdoor-pool.png";
    } else if (amenities.toLowerCase().toString().contains("local calls") ||
        amenities.toLowerCase().toString().contains("call")) {
      amenitiesImage = "assets/images/local-call.png";
    } else if (amenities
        .toLowerCase()
        .toString()
        .contains("air conditioning")) {
      amenitiesImage = "assets/images/air-conditioner.png";
    } else if (amenities.toLowerCase().toString().contains("fax")) {
      amenitiesImage = "assets/images/fax.png";
    } else if (amenities.toLowerCase().toString().contains("late checkout")) {
      amenitiesImage = "assets/images/late-checkout.png";
    } else if (amenities.toLowerCase().toString().contains("security") ||
        amenities.toLowerCase().toString().contains("cash")) {
      amenitiesImage = "assets/images/security.png";
    } else if (amenities.toLowerCase().toString().contains("Beverage") ||
        amenities.toLowerCase().toString().contains("cocktail")) {
      amenitiesImage = "assets/images/liquor.png";
    } else if (amenities.toLowerCase().toString().contains("tv") ||
        amenities.toLowerCase().toString().contains("television")) {
      amenitiesImage = "assets/images/television-screen.png";
    } else if (amenities.toLowerCase().toString().contains("alarm")) {
      amenitiesImage = "assets/images/alarm.png";
    } else if (amenities.toLowerCase().toString().contains("welfare")) {
      amenitiesImage = "assets/images/welfare.png";
    } else if (amenities.toLowerCase().toString().contains("facilities")) {
      amenitiesImage = "assets/images/accessible-facilites.png";
    } else if (amenities.toLowerCase().toString().contains("grill") ||
        amenities.toLowerCase().toString().contains("bpq")) {
      amenitiesImage = "assets/images/bbq-grills.png";
    } else if (amenities.toLowerCase().toString().contains("pool")) {
      amenitiesImage = "assets/images/pool.png";
    } else if (amenities.toLowerCase().toString().contains("golf")) {
      amenitiesImage = "assets/images/golf-icon.png";
    } else if (amenities.toLowerCase().toString().contains("restront")) {
      amenitiesImage = "assets/images/restront.png";
    } else if (amenities.toLowerCase().toString().contains("beach")) {
      amenitiesImage = "assets/images/resort-icon.png";
    } else if (amenities.toLowerCase().toString().contains("elevator")) {
      amenitiesImage = "assets/images/elevator.png";
    } else if (amenities.toLowerCase().toString().contains("half board") ||
        amenities.toLowerCase().toString().contains("american plan") ||
        amenities.toLowerCase().toString().contains("board")) {
      amenitiesImage = "assets/images/american-football.png";
    } else if (amenities.toLowerCase().toString().contains("iron")) {
      amenitiesImage = "assets/images/print.png";
    } else if (amenities.toLowerCase().toString().contains("airport shuttle")) {
      amenitiesImage = "assets/images/airport-shuttle.png";
    } else if (amenities.toLowerCase().toString().contains("children")) {
      amenitiesImage = "assets/images/rocking-horse.png";
    } else if (amenities.toLowerCase().toString().contains("bell staff") ||
        amenities.toLowerCase().toString().contains("porter")) {
      amenitiesImage = "assets/images/bell-boy.png";
    } else if (amenities.toLowerCase().toString().contains("check out")) {
      amenitiesImage = "assets/images/check-in.png";
    } else if (amenities.toLowerCase().toString().contains("balcony") ||
        amenities.toLowerCase().toString().contains("terrace") ||
        amenities.toLowerCase().toString().contains("lanai")) {
      amenitiesImage = "assets/images/antique-balcony.png";
    } else if (amenities.toLowerCase().toString().contains("shower")) {
      amenitiesImage = "assets/images/shower.png";
    } else if (amenities.toLowerCase().toString().contains("restaurant")) {
      amenitiesImage = "assets/images/restaurant.png";
    } else if (amenities.toLowerCase().toString().contains("coffee") ||
        amenities.toLowerCase().toString().contains("tea")) {
      amenitiesImage = "assets/images/coffee-machine.png";
    } else if (amenities.toLowerCase().toString().contains("housekeeping")) {
      amenitiesImage = "assets/images/cleaning-tools.png";
    } else if (amenities.toLowerCase().toString().contains("downtown")) {
      amenitiesImage = "assets/images/cityscape.png";
    } else if (amenities.toLowerCase().toString().contains("internet")) {
      amenitiesImage = "assets/images/internet-access.png";
    } else if (amenities.toLowerCase().toString().contains("airport")) {
      amenitiesImage = "assets/images/airport-green.png";
    } else if (amenities.toLowerCase().toString().contains("safe")) {
      amenitiesImage = "assets/images/hotel.png";
    } else if (amenities.toLowerCase().toString().contains("bar")) {
      amenitiesImage = "assets/images/bar.png";
    } else if (amenities.toLowerCase().toString().contains("24-hour")) {
      amenitiesImage = "assets/images/24-hour.png";
    } else if (amenities.toLowerCase().toString().contains("resort")) {
      amenitiesImage = "assets/images/resort-icon.png";
    } else if (amenities.toLowerCase().toString().contains("stream")) {
      amenitiesImage = "assets/images/stream-icon.png";
    } else if (amenities.toLowerCase().toString().contains("tennis")) {
      amenitiesImage = "assets/images/tennis-icon.png";
    } else if (amenities.toLowerCase().toString().contains("business")) {
      amenitiesImage = "assets/images/business-center-icon.png";
    } else if (amenities.toLowerCase().toString().contains("convention")) {
      amenitiesImage = "assets/images/convention-icon.png";
    } else if (amenities.toLowerCase().toString().contains("fitness")) {
      amenitiesImage = "assets/images/fitness-icon.png";
    } else if (amenities.toLowerCase().toString().contains("highchair")) {
      amenitiesImage = "assets/images/highchair-icon.png";
    } else if (amenities.toLowerCase().toString().contains("meeting room")) {
      amenitiesImage = "assets/images/meeting-room-icon.png";
    } else if (amenities.toLowerCase().toString().contains("jaccuzzi")) {
      amenitiesImage = "assets/images/jaccuzzi-icon.png";
    } else if (amenities.toLowerCase().toString().contains("message")) {
      amenitiesImage = "assets/images/message-icon.png";
    } else if (amenities.toLowerCase().toString().contains("nosmoking")) {
      amenitiesImage = "assets/images/nosomking-icon.png";
    } else if (amenities.toLowerCase().toString().contains("tennis")) {
      amenitiesImage = "assets/images/tennis-icon.png";
    } else if (amenities.toLowerCase().toString().contains("massage") ||
        amenities.toLowerCase().toString().contains("spa")) {
      amenitiesImage = "assets/images/massage-icon.png";
    } else {
      amenitiesImage = "assets/images/24-hour.png";
    }
    return amenitiesImage;
  }

  String getFilterAmenities(String str) {
    var amenitiesImage = "";
    amenitiesImage = "assets/images/samplesvg.svg";
    return amenitiesImage;
  }

  String parseHtmlString(String htmlString) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    htmlString = htmlString.replaceAll(exp, '');
    var unescape = new HtmlUnescape();
    var text = unescape.convert(htmlString);
    return text;
  }

  Widget loadGifLoader() {
    return Image.asset(
      "assets/images/hotal_circle_loader_icon.gif",
      height: 100.0,
      width: 100.0,
    );
  }

  bool isTablet1() {
    // The equivalent of the "smallestWidth" qualifier on Android.
    var shortestSide =
        MediaQueryData.fromWindow(WidgetsBinding.instance!.window);
    // Determine if we should use mobile layout or not, 600 here is
    // a common breakpoint for a typical 7-inch tablet.
    return shortestSide.size.shortestSide > 600;
  }

  bool isTablet(BuildContext context) {
    // The equivalent of the "smallestWidth" qualifier on Android.
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    // Determine if we should use mobile layout or not, 600 here is
    // a common breakpoint for a typical 7-inch tablet.
    return shortestSide > 600;
  }

  String getProxyImage(images) {
    String image = "";
    if (images != null &&
        images["image"] != null &&
        images["image"]["proxy_images"] != null) {
      images["image"]["proxy_images"].forEach((proxyimage) {
        // if (AppUtility().isTablet1() && proxyimage["device"] == "tablet") {
        //   image = proxyimage["normal"]["url"].toString();
        // } else if (!AppUtility().isTablet1() &&
        //     proxyimage["device"] == "phone") {
        //   image = proxyimage["normal"]["url"].toString();
        // }
        if(proxyimage["device"] == "tablet"){
          image = proxyimage["normal"]["url"].toString();
        }
      });
    }
    return image;
  }

  List<String> getImages(data) {
    List<String> backgroundImages = [];
    data["module"]["result"]["images"].forEach((images) {
      var proxyImage = getProxyImage(images);
      if (proxyImage != "") {
        backgroundImages.add(proxyImage);
      }
    });
    return backgroundImages;
  }
  List<String> getGalleyViewImages(data) {
    List<String> backgroundImages = [];
    data["module"]["result"]["images"].forEach((images) {
      var proxyImage = getGalleryViewImage(images);
      if (proxyImage != "") {
        backgroundImages.add(proxyImage);
      }
    });
    return backgroundImages;
  }

  String getGalleryViewImage(images) {
    String image = "";
    if (images != null &&
        images["image"] != null &&
        images["image"]["proxy_images"] != null) {
      images["image"]["proxy_images"].forEach((proxyimage) {
        if (proxyimage["device"] == "tablet") {
          image = proxyimage["normal"]["url"].toString();
        }
      });
    }
    return image;
    // String image = "";
    // if (images != null &&
    //     images["image"] != null ) {
    //   image = images["image"]["url"].toString();
    // }
    // return image;
  }
  Future cacheImage(BuildContext context,String url){
    return precacheImage( OptimizedCacheImageProvider(url,
        cacheManager: getInstance(), cacheKey: url), context);
  }

  loadImage(url) {
    return Image(
      image: OptimizedCacheImageProvider(url,
          cacheManager: _instance, cacheKey: url,
      ),
      fit: BoxFit.cover,
    );
  }
  loadNetworkImage(url) {
    return Image.network(
      url,
      fit: BoxFit.cover,
    );
  }

  deleteCache(){
    _instance.emptyCache();
  }

  getGalleryImages() {}
  indicaorSize(BuildContext context) {
    return AppUtility().isTablet(context) ? 12.0 : 10.0;
  }

  currentIndicatorSize(BuildContext context) {
    return AppUtility().isTablet(context) ? 45.0 : 30.0;
  }

  // showToast(String msg){
  //   Fluttertoast.showToast(
  //       msg: msg,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Uicolors.buttonbg,
  //       textColor: Colors.white,
  //       fontSize: hp(fontSize.FontSize.size15)
  //   );
  // }
  showToastView(String message, BuildContext context) {
    //   ToastView.createView(
    //       message,
    //       context,
    //       Toast.LENGTH_LONG,
    //       Toast.BOTTOM,
    //       Uicolors.buttonbg,
    //       Colors.white,
    //       3,
    //       null);
    // }
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Uicolors.buttonbg,
        textColor: Colors.white,
        fontSize: hp(fontSize.FontSize.size15));
  }

  static void saveCurrencyCode(String code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Strings.currencyCode, code);
  }

  static Future<String?> getCurrencyCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? code = prefs.getString(Strings.currencyCode);
    return code;
  }

  String getCurrentCurrency() {
    if (GlobalState.selectedCurrency != null &&
        GlobalState.selectedCurrency != "") {
      return GlobalState.selectedCurrency == Strings.usd
          ? Strings.us$
          : GlobalState.selectedCurrency;
    } else {
      return Strings.us$;
    }
  }

  void launchURL(_url) async {
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  Future<bool> determinePosition() async {
    try {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
      //   return Future.error('Location services are disabled.');
        return false;
      }
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied||permission == LocationPermission.deniedForever) {
        LocationPermission requestPermission = await Geolocator.requestPermission();
        if(requestPermission == LocationPermission.denied||permission == LocationPermission.deniedForever){
          Geolocator.openLocationSettings();
        }
        return false;
      } else {
        return true;
      }
    }catch(e){
      print("error$e");
      return false;
    }
  }
  Future getUserLocation() async {
    try {
      print("getCurrentPosition called");
      var currentLocation = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      var _center = LatLng(currentLocation.latitude, currentLocation.longitude);
      print('center $_center');
      List<Placemark> placemarks =
      await placemarkFromCoordinates(
          currentLocation.latitude, currentLocation.longitude);
      Placemark place = placemarks[0];
      var current_location = '${place.locality}, ${place
          .administrativeArea}, ${place.country}';
      print(current_location);
    }catch(e){
      print("getUserLocation");
    }
  }

  var emojiRegexp =
      '   /\uD83C\uDFF4\uDB40\uDC67\uDB40\uDC62(?:\uDB40\uDC77\uDB40\uDC6C\uDB40\uDC73|\uDB40\uDC73\uDB40\uDC63\uDB40\uDC74|\uDB40\uDC65\uDB40\uDC6E\uDB40\uDC67)\uDB40\uDC7F|\uD83D\uDC69\u200D\uD83D\uDC69\u200D(?:\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67]))|\uD83D\uDC68(?:\uD83C\uDFFF\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFE])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFE\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFD\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFD\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFC\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB\uDFFD-\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFB\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFC-\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\u200D(?:\u2764\uFE0F\u200D(?:\uD83D\uDC8B\u200D)?\uD83D\uDC68|(?:\uD83D[\uDC68\uDC69])\u200D(?:\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67]))|\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67])|(?:\uD83D[\uDC68\uDC69])\u200D(?:\uD83D[\uDC66\uDC67])|[\u2695\u2696\u2708]\uFE0F|\uD83D[\uDC66\uDC67]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|(?:\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\uD83C\uDFFB\u200D[\u2695\u2696\u2708])\uFE0F|\uD83C\uDFFF|\uD83C\uDFFE|\uD83C\uDFFD|\uD83C\uDFFC|\uD83C\uDFFB)?|\uD83E\uDDD1(?:(?:\uD83C[\uDFFB-\uDFFF])\u200D(?:\uD83E\uDD1D\u200D\uD83E\uDDD1(?:\uD83C[\uDFFB-\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\u200D(?:\uD83E\uDD1D\u200D\uD83E\uDDD1|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD]))|\uD83D\uDC69(?:\u200D(?:\u2764\uFE0F\u200D(?:\uD83D\uDC8B\u200D(?:\uD83D[\uDC68\uDC69])|\uD83D[\uDC68\uDC69])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFF\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFE\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFD\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFC\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFB\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD]))|\uD83D\uDC69\uD83C\uDFFF\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFB-\uDFFE])|\uD83D\uDC69\uD83C\uDFFE\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFB-\uDFFD\uDFFF])|\uD83D\uDC69\uD83C\uDFFD\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF])|\uD83D\uDC69\uD83C\uDFFC\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFB\uDFFD-\uDFFF])|\uD83D\uDC69\uD83C\uDFFB\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFC-\uDFFF])|\uD83D\uDC69\u200D\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC69\u200D\uD83D\uDC69\u200D(?:\uD83D[\uDC66\uDC67])|(?:\uD83D\uDC41\uFE0F\u200D\uD83D\uDDE8|\uD83D\uDC69(?:\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\uD83C\uDFFB\u200D[\u2695\u2696\u2708]|\u200D[\u2695\u2696\u2708])|\uD83C\uDFF3\uFE0F\u200D\u26A7|\uD83E\uDDD1(?:(?:\uD83C[\uDFFB-\uDFFF])\u200D[\u2695\u2696\u2708]|\u200D[\u2695\u2696\u2708])|\uD83D\uDC3B\u200D\u2744|(?:(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD6-\uDDDD])(?:\uD83C[\uDFFB-\uDFFF])|\uD83D\uDC6F|\uD83E[\uDD3C\uDDDE\uDDDF])\u200D[\u2640\u2642]|(?:\u26F9|\uD83C[\uDFCB\uDFCC]|\uD83D\uDD75)(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])\u200D[\u2640\u2642]|\uD83C\uDFF4\u200D\u2620|(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD6-\uDDDD])\u200D[\u2640\u2642]|[\xA9\xAE\u203C\u2049\u2122\u2139\u2194-\u2199\u21A9\u21AA\u2328\u23CF\u23ED-\u23EF\u23F1\u23F2\u23F8-\u23FA\u24C2\u25AA\u25AB\u25B6\u25C0\u25FB\u25FC\u2600-\u2604\u260E\u2611\u2618\u2620\u2622\u2623\u2626\u262A\u262E\u262F\u2638-\u263A\u2640\u2642\u265F\u2660\u2663\u2665\u2666\u2668\u267B\u267E\u2692\u2694-\u2697\u2699\u269B\u269C\u26A0\u26A7\u26B0\u26B1\u26C8\u26CF\u26D1\u26D3\u26E9\u26F0\u26F1\u26F4\u26F7\u26F8\u2702\u2708\u2709\u270F\u2712\u2714\u2716\u271D\u2721\u2733\u2734\u2744\u2747\u2763\u2764\u27A1\u2934\u2935\u2B05-\u2B07\u3030\u303D\u3297\u3299]|\uD83C[\uDD70\uDD71\uDD7E\uDD7F\uDE02\uDE37\uDF21\uDF24-\uDF2C\uDF36\uDF7D\uDF96\uDF97\uDF99-\uDF9B\uDF9E\uDF9F\uDFCD\uDFCE\uDFD4-\uDFDF\uDFF5\uDFF7]|\uD83D[\uDC3F\uDCFD\uDD49\uDD4A\uDD6F\uDD70\uDD73\uDD76-\uDD79\uDD87\uDD8A-\uDD8D\uDDA5\uDDA8\uDDB1\uDDB2\uDDBC\uDDC2-\uDDC4\uDDD1-\uDDD3\uDDDC-\uDDDE\uDDE1\uDDE3\uDDE8\uDDEF\uDDF3\uDDFA\uDECB\uDECD-\uDECF\uDEE0-\uDEE5\uDEE9\uDEF0\uDEF3])\uFE0F|\uD83D\uDC69\u200D\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67])|\uD83C\uDFF3\uFE0F\u200D\uD83C\uDF08|\uD83D\uDC69\u200D\uD83D\uDC67|\uD83D\uDC69\u200D\uD83D\uDC66|\uD83D\uDC15\u200D\uD83E\uDDBA|\uD83D\uDC69(?:\uD83C\uDFFF|\uD83C\uDFFE|\uD83C\uDFFD|\uD83C\uDFFC|\uD83C\uDFFB)?|\uD83C\uDDFD\uD83C\uDDF0|\uD83C\uDDF6\uD83C\uDDE6|\uD83C\uDDF4\uD83C\uDDF2|\uD83D\uDC08\u200D\u2B1B|\uD83D\uDC41\uFE0F|\uD83C\uDFF3\uFE0F|\uD83E\uDDD1(?:\uD83C[\uDFFB-\uDFFF])?|\uD83C\uDDFF(?:\uD83C[\uDDE6\uDDF2\uDDFC])|\uD83C\uDDFE(?:\uD83C[\uDDEA\uDDF9])|\uD83C\uDDFC(?:\uD83C[\uDDEB\uDDF8])|\uD83C\uDDFB(?:\uD83C[\uDDE6\uDDE8\uDDEA\uDDEC\uDDEE\uDDF3\uDDFA])|\uD83C\uDDFA(?:\uD83C[\uDDE6\uDDEC\uDDF2\uDDF3\uDDF8\uDDFE\uDDFF])|\uD83C\uDDF9(?:\uD83C[\uDDE6\uDDE8\uDDE9\uDDEB-\uDDED\uDDEF-\uDDF4\uDDF7\uDDF9\uDDFB\uDDFC\uDDFF])|\uD83C\uDDF8(?:\uD83C[\uDDE6-\uDDEA\uDDEC-\uDDF4\uDDF7-\uDDF9\uDDFB\uDDFD-\uDDFF])|\uD83C\uDDF7(?:\uD83C[\uDDEA\uDDF4\uDDF8\uDDFA\uDDFC])|\uD83C\uDDF5(?:\uD83C[\uDDE6\uDDEA-\uDDED\uDDF0-\uDDF3\uDDF7-\uDDF9\uDDFC\uDDFE])|\uD83C\uDDF3(?:\uD83C[\uDDE6\uDDE8\uDDEA-\uDDEC\uDDEE\uDDF1\uDDF4\uDDF5\uDDF7\uDDFA\uDDFF])|\uD83C\uDDF2(?:\uD83C[\uDDE6\uDDE8-\uDDED\uDDF0-\uDDFF])|\uD83C\uDDF1(?:\uD83C[\uDDE6-\uDDE8\uDDEE\uDDF0\uDDF7-\uDDFB\uDDFE])|\uD83C\uDDF0(?:\uD83C[\uDDEA\uDDEC-\uDDEE\uDDF2\uDDF3\uDDF5\uDDF7\uDDFC\uDDFE\uDDFF])|\uD83C\uDDEF(?:\uD83C[\uDDEA\uDDF2\uDDF4\uDDF5])|\uD83C\uDDEE(?:\uD83C[\uDDE8-\uDDEA\uDDF1-\uDDF4\uDDF6-\uDDF9])|\uD83C\uDDED(?:\uD83C[\uDDF0\uDDF2\uDDF3\uDDF7\uDDF9\uDDFA])|\uD83C\uDDEC(?:\uD83C[\uDDE6\uDDE7\uDDE9-\uDDEE\uDDF1-\uDDF3\uDDF5-\uDDFA\uDDFC\uDDFE])|\uD83C\uDDEB(?:\uD83C[\uDDEE-\uDDF0\uDDF2\uDDF4\uDDF7])|\uD83C\uDDEA(?:\uD83C[\uDDE6\uDDE8\uDDEA\uDDEC\uDDED\uDDF7-\uDDFA])|\uD83C\uDDE9(?:\uD83C[\uDDEA\uDDEC\uDDEF\uDDF0\uDDF2\uDDF4\uDDFF])|\uD83C\uDDE8(?:\uD83C[\uDDE6\uDDE8\uDDE9\uDDEB-\uDDEE\uDDF0-\uDDF5\uDDF7\uDDFA-\uDDFF])|\uD83C\uDDE7(?:\uD83C[\uDDE6\uDDE7\uDDE9-\uDDEF\uDDF1-\uDDF4\uDDF6-\uDDF9\uDDFB\uDDFC\uDDFE\uDDFF])|\uD83C\uDDE6(?:\uD83C[\uDDE8-\uDDEC\uDDEE\uDDF1\uDDF2\uDDF4\uDDF6-\uDDFA\uDDFC\uDDFD\uDDFF])|[#\*0-9]\uFE0F\u20E3|(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD6-\uDDDD])(?:\uD83C[\uDFFB-\uDFFF])|(?:\u26F9|\uD83C[\uDFCB\uDFCC]|\uD83D\uDD75)(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])|\uD83C\uDFF4|(?:[\u270A\u270B]|\uD83C[\uDF85\uDFC2\uDFC7]|\uD83D[\uDC42\uDC43\uDC46-\uDC50\uDC66\uDC67\uDC6B-\uDC6D\uDC72\uDC74-\uDC76\uDC78\uDC7C\uDC83\uDC85\uDCAA\uDD7A\uDD95\uDD96\uDE4C\uDE4F\uDEC0\uDECC]|\uD83E[\uDD0C\uDD0F\uDD18-\uDD1C\uDD1E\uDD1F\uDD30-\uDD34\uDD36\uDD77\uDDB5\uDDB6\uDDBB\uDDD2-\uDDD5])(?:\uD83C[\uDFFB-\uDFFF])|(?:[\u261D\u270C\u270D]|\uD83D[\uDD74\uDD90])(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])|[\u270A\u270B]|\uD83C[\uDF85\uDFC2\uDFC7]|\uD83D[\uDC08\uDC15\uDC3B\uDC42\uDC43\uDC46-\uDC50\uDC66\uDC67\uDC6B-\uDC6D\uDC72\uDC74-\uDC76\uDC78\uDC7C\uDC83\uDC85\uDCAA\uDD7A\uDD95\uDD96\uDE4C\uDE4F\uDEC0\uDECC]|\uD83E[\uDD0C\uDD0F\uDD18-\uDD1C\uDD1E\uDD1F\uDD30-\uDD34\uDD36\uDD77\uDDB5\uDDB6\uDDBB\uDDD2-\uDDD5]|\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD6-\uDDDD]|\uD83D\uDC6F|\uD83E[\uDD3C\uDDDE\uDDDF]|[\u231A\u231B\u23E9-\u23EC\u23F0\u23F3\u25FD\u25FE\u2614\u2615\u2648-\u2653\u267F\u2693\u26A1\u26AA\u26AB\u26BD\u26BE\u26C4\u26C5\u26CE\u26D4\u26EA\u26F2\u26F3\u26F5\u26FA\u26FD\u2705\u2728\u274C\u274E\u2753-\u2755\u2757\u2795-\u2797\u27B0\u27BF\u2B1B\u2B1C\u2B50\u2B55]|\uD83C[\uDC04\uDCCF\uDD8E\uDD91-\uDD9A\uDE01\uDE1A\uDE2F\uDE32-\uDE36\uDE38-\uDE3A\uDE50\uDE51\uDF00-\uDF20\uDF2D-\uDF35\uDF37-\uDF7C\uDF7E-\uDF84\uDF86-\uDF93\uDFA0-\uDFC1\uDFC5\uDFC6\uDFC8\uDFC9\uDFCF-\uDFD3\uDFE0-\uDFF0\uDFF8-\uDFFF]|\uD83D[\uDC00-\uDC07\uDC09-\uDC14\uDC16-\uDC3A\uDC3C-\uDC3E\uDC40\uDC44\uDC45\uDC51-\uDC65\uDC6A\uDC79-\uDC7B\uDC7D-\uDC80\uDC84\uDC88-\uDCA9\uDCAB-\uDCFC\uDCFF-\uDD3D\uDD4B-\uDD4E\uDD50-\uDD67\uDDA4\uDDFB-\uDE44\uDE48-\uDE4A\uDE80-\uDEA2\uDEA4-\uDEB3\uDEB7-\uDEBF\uDEC1-\uDEC5\uDED0-\uDED2\uDED5-\uDED7\uDEEB\uDEEC\uDEF4-\uDEFC\uDFE0-\uDFEB]|\uD83E[\uDD0D\uDD0E\uDD10-\uDD17\uDD1D\uDD20-\uDD25\uDD27-\uDD2F\uDD3A\uDD3F-\uDD45\uDD47-\uDD76\uDD78\uDD7A-\uDDB4\uDDB7\uDDBA\uDDBC-\uDDCB\uDDD0\uDDE0-\uDDFF\uDE70-\uDE74\uDE78-\uDE7A\uDE80-\uDE86\uDE90-\uDEA8\uDEB0-\uDEB6\uDEC0-\uDEC2\uDED0-\uDED6]|(?:[\u231A\u231B\u23E9-\u23EC\u23F0\u23F3\u25FD\u25FE\u2614\u2615\u2648-\u2653\u267F\u2693\u26A1\u26AA\u26AB\u26BD\u26BE\u26C4\u26C5\u26CE\u26D4\u26EA\u26F2\u26F3\u26F5\u26FA\u26FD\u2705\u270A\u270B\u2728\u274C\u274E\u2753-\u2755\u2757\u2795-\u2797\u27B0\u27BF\u2B1B\u2B1C\u2B50\u2B55]|\uD83C[\uDC04\uDCCF\uDD8E\uDD91-\uDD9A\uDDE6-\uDDFF\uDE01\uDE1A\uDE2F\uDE32-\uDE36\uDE38-\uDE3A\uDE50\uDE51\uDF00-\uDF20\uDF2D-\uDF35\uDF37-\uDF7C\uDF7E-\uDF93\uDFA0-\uDFCA\uDFCF-\uDFD3\uDFE0-\uDFF0\uDFF4\uDFF8-\uDFFF]|\uD83D[\uDC00-\uDC3E\uDC40\uDC42-\uDCFC\uDCFF-\uDD3D\uDD4B-\uDD4E\uDD50-\uDD67\uDD7A\uDD95\uDD96\uDDA4\uDDFB-\uDE4F\uDE80-\uDEC5\uDECC\uDED0-\uDED2\uDED5-\uDED7\uDEEB\uDEEC\uDEF4-\uDEFC\uDFE0-\uDFEB]|\uD83E[\uDD0C-\uDD3A\uDD3C-\uDD45\uDD47-\uDD78\uDD7A-\uDDCB\uDDCD-\uDDFF\uDE70-\uDE74\uDE78-\uDE7A\uDE80-\uDE86\uDE90-\uDEA8\uDEB0-\uDEB6\uDEC0-\uDEC2\uDED0-\uDED6])|(?:[#\*0-9\xA9\xAE\u203C\u2049\u2122\u2139\u2194-\u2199\u21A9\u21AA\u231A\u231B\u2328\u23CF\u23E9-\u23F3\u23F8-\u23FA\u24C2\u25AA\u25AB\u25B6\u25C0\u25FB-\u25FE\u2600-\u2604\u260E\u2611\u2614\u2615\u2618\u261D\u2620\u2622\u2623\u2626\u262A\u262E\u262F\u2638-\u263A\u2640\u2642\u2648-\u2653\u265F\u2660\u2663\u2665\u2666\u2668\u267B\u267E\u267F\u2692-\u2697\u2699\u269B\u269C\u26A0\u26A1\u26A7\u26AA\u26AB\u26B0\u26B1\u26BD\u26BE\u26C4\u26C5\u26C8\u26CE\u26CF\u26D1\u26D3\u26D4\u26E9\u26EA\u26F0-\u26F5\u26F7-\u26FA\u26FD\u2702\u2705\u2708-\u270D\u270F\u2712\u2714\u2716\u271D\u2721\u2728\u2733\u2734\u2744\u2747\u274C\u274E\u2753-\u2755\u2757\u2763\u2764\u2795-\u2797\u27A1\u27B0\u27BF\u2934\u2935\u2B05-\u2B07\u2B1B\u2B1C\u2B50\u2B55\u3030\u303D\u3297\u3299]|\uD83C[\uDC04\uDCCF\uDD70\uDD71\uDD7E\uDD7F\uDD8E\uDD91-\uDD9A\uDDE6-\uDDFF\uDE01\uDE02\uDE1A\uDE2F\uDE32-\uDE3A\uDE50\uDE51\uDF00-\uDF21\uDF24-\uDF93\uDF96\uDF97\uDF99-\uDF9B\uDF9E-\uDFF0\uDFF3-\uDFF5\uDFF7-\uDFFF]|\uD83D[\uDC00-\uDCFD\uDCFF-\uDD3D\uDD49-\uDD4E\uDD50-\uDD67\uDD6F\uDD70\uDD73-\uDD7A\uDD87\uDD8A-\uDD8D\uDD90\uDD95\uDD96\uDDA4\uDDA5\uDDA8\uDDB1\uDDB2\uDDBC\uDDC2-\uDDC4\uDDD1-\uDDD3\uDDDC-\uDDDE\uDDE1\uDDE3\uDDE8\uDDEF\uDDF3\uDDFA-\uDE4F\uDE80-\uDEC5\uDECB-\uDED2\uDED5-\uDED7\uDEE0-\uDEE5\uDEE9\uDEEB\uDEEC\uDEF0\uDEF3-\uDEFC\uDFE0-\uDFEB]|\uD83E[\uDD0C-\uDD3A\uDD3C-\uDD45\uDD47-\uDD78\uDD7A-\uDDCB\uDDCD-\uDDFF\uDE70-\uDE74\uDE78-\uDE7A\uDE80-\uDE86\uDE90-\uDEA8\uDEB0-\uDEB6\uDEC0-\uDEC2\uDED0-\uDED6])\uFE0F|(?:[\u261D\u26F9\u270A-\u270D]|\uD83C[\uDF85\uDFC2-\uDFC4\uDFC7\uDFCA-\uDFCC]|\uD83D[\uDC42\uDC43\uDC46-\uDC50\uDC66-\uDC78\uDC7C\uDC81-\uDC83\uDC85-\uDC87\uDC8F\uDC91\uDCAA\uDD74\uDD75\uDD7A\uDD90\uDD95\uDD96\uDE45-\uDE47\uDE4B-\uDE4F\uDEA3\uDEB4-\uDEB6\uDEC0\uDECC]|\uD83E[\uDD0C\uDD0F\uDD18-\uDD1F\uDD26\uDD30-\uDD39\uDD3C-\uDD3E\uDD77\uDDB5\uDDB6\uDDB8\uDDB9\uDDBB\uDDCD-\uDDCF\uDDD1-\uDDDD])/';

 static isCheckProfileUpdate() async  {
   final FirebaseAuth auth = FirebaseAuth.instance;
    CollectionReference userDetails =
    FirebaseFirestore.instance.collection('users');

    final User? user = auth.currentUser;
    bool isProfileUpdate =false;
    if (user != null) {
      var userId = user.uid;
      // EasyLoading.show();
      await userDetails.doc(userId).get().then((value) async {
        // EasyLoading.dismiss();
        UserModel users =
        UserModel.fromJson(value.data() as Map<String, dynamic>);
        if (users != null) {
          if( users.name.firstName.isEmpty ||  users.contact.emailAddress.isEmpty ){
            isProfileUpdate = true;
          }else{
            isProfileUpdate =  false;

          }
        }
      });
    }
    return isProfileUpdate;
  }

  showProfileDialog(title, content){
    return showDialog(
       barrierDismissible: false,
        context: NavigationService.navigatorKey.currentContext!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[

              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Ok'),
              ),
            ],
          );
        });
  }


}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

}
