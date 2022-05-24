import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:global_state/gs.dart';
import 'package:jaz_app/models/currencyModel.dart';
import 'package:jaz_app/models/graphql/graphql_api.graphql.dart';
import 'package:jaz_app/models/roommodel.dart';

class GlobalState {
  static int get tabindex => gs['tabindex'];
  static set tabindex(int widget) => gs['tabindex'] = widget;

  static int get overViewTabIndex => gs['overViewTabIndex'];
  static set overViewTabIndex(int widget) => gs['overViewTabIndex'] = widget;

  static int get overViewPrevIndex => gs['overViewPrevIndex'];
  static set overViewPrevIndex(int widget) => gs['overViewPrevIndex'] = widget;

  static String get roomDetails => gs['roomDetails'];
  static set roomDetails(String widget) => gs['roomDetails'] = widget;

  // static List<TravellerFilterInput> get roomRefType =>
  //     gs['roomRefType'] as List<TravellerFilterInput>;
  // static set roomRefType(List<TravellerFilterInput> input) =>
  //     gs.setValue("roomRefType", input);
  //
  // static List<TravellersRoomInput> get roomRef =>
  //     gs['roomRef'] as List<TravellersRoomInput>;
  // static set roomRef(List<TravellersRoomInput> input) =>
  //     gs.setValue("roomRef", input);

  static List<Room> get selectedRoomList =>
      gs['selectedRoomList'] as List<Room>;
  static set selectedRoomList(List<Room> input) =>
      gs.setValue("selectedRoomList", input);

  static String get personDetails => gs['personDetails'];
  static set personDetails(String widget) => gs['personDetails'] = widget;

  static DateTime get checkInDate => gs['checkInDate'];
  static set checkInDate(DateTime widget) => gs['checkInDate'] = widget;

  static DateTime get checkOutDate => gs['checkOutDate'];
  static set checkOutDate(DateTime widget) => gs['checkOutDate'] = widget;

  static String get destinationValue => gs['destinationValue'];
  static set destinationValue(String widget) => gs['destinationValue'] = widget;

  static String get themeValue => gs['themeValue'];
  static set themeValue(String widget) => gs['themeValue'] = widget;

  static String get promoCode => gs['promoCode'];
  static set promoCode(String widget) => gs['promoCode'] = widget;

  static List<TravellerFilterInput> get selectedRoomRefType =>
      gs['selectedRoomRefType'] as List<TravellerFilterInput>;
  static set selectedRoomRefType(List<TravellerFilterInput> input) =>
      gs.setValue("selectedRoomRefType", input);

  static List<TravellersRoomInput> get selectedRoomRef =>
      gs['selectedRoomRef'] as List<TravellersRoomInput>;
  static set selectedRoomRef(List<TravellersRoomInput> input) =>
      gs.setValue("selectedRoomRef", input);

  static HashMap<String, String> get searchCode =>
      gs['searchCode'] as HashMap<String, String>;
  static set searchCode(HashMap<String, String> input) =>
      gs.setValue("searchCode", input);

  static HashMap<String, dynamic> get selectedBookingRoomDet =>
      gs['selectedBookingRoomDet'] as HashMap<String, dynamic>;
  static set selectedBookingRoomDet(HashMap<String, dynamic> input) =>
      gs.setValue("selectedBookingRoomDet", input);

  static String get destinationString => gs['destinationString'];
  static set destinationString(String widget) =>
      gs['destinationString'] = widget;

  static String get destinationNodeCode => gs['destinationNodeCode'];
  static set destinationNodeCode(String widget) =>
      gs['destinationNodeCode'] = widget;


  static String get termsAndConditionUrl => gs['termsAndConditionUrl'];
  static set termsAndConditionUrl(String widget) =>
      gs['termsAndConditionUrl'] = widget;

  static List<Currencies> get currencyList =>
      gs['currencyList'] as List<Currencies>;
  static set currencyList(List<Currencies> currencies) =>
      gs.setValue('currencyList', currencies);

  static String get selectedCurrency => gs['selectedCurrency'];
  static set selectedCurrency(String selectedCurrency) =>
      gs.setValue('selectedCurrency', selectedCurrency);

  static String get aboutsHeadLine => gs['aboutUsHeadline'];
  static set aboutsHeadLine(String aboutUsHeadLine) =>
      gs.setValue('aboutUsHeadline', aboutUsHeadLine);

  static String get aboutUsContentHeadLine => gs['aboutUsContentHeadline'];
  static set aboutUsContentHeadLine(String aboutUsContentHeadline) =>
      gs.setValue('aboutUsContentHeadline', aboutUsContentHeadline);

  static String get aboutUsContent => gs['aboutUsContent'];
  static set aboutUsContent(String aboutUsContent) =>
      gs.setValue('aboutUsContent', aboutUsContent);

  static List<String> get imageList => gs['aboutusImageList'] as List<String>;
  static set imageList(List<String> imageList) =>
      gs.setValue('aboutusImageList', imageList);

  static get contactUsLinks => gs['contactusLinks'];
  static set contactUsLinks(var contactUsLinks) =>
      gs.setValue('contactusLinks', contactUsLinks);

  static get socialMediaLinks => gs['socialMediaLink'];
  static set socialMediaLinks(var socialMediaLink) =>
      gs.setValue('socialMediaLink', socialMediaLink);

  static List<dynamic> get favList => gs['favList'] as List<dynamic>;
  static set favList(List<dynamic> favList) => gs.setValue('favList', favList);

  static int get randomImageIndex => gs['randomImageIndex'];
  static set randomImageIndex(int widget) => gs['randomImageIndex'] = widget;

  static String get offerStartStr => gs['offerStart'];
  static set offerStartStr(String offerStartStr) =>
      gs.setValue('offerStart', offerStartStr);

  static List<String> get getSearchImage =>
      gs['getSearchImage'] as List<String>;
  static set getSearchImage(List<String> getSearchImage) =>
      gs.setValue('getSearchImage', getSearchImage);

  static List get reservationIds => gs['reservationIds'] as List;
  static set reservationIds(List reservationIds) => gs.setValue('reservationIds', reservationIds);

  static String get reservationComment => gs['reservationComment'] as String;
  static set reservationComment(String reservationComment) => gs.setValue('reservationComment', reservationComment);


}
