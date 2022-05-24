//import 'package:facebook_app_events/facebook_app_events.dart';
//import 'package:intl/intl.dart';

class FacebookEvents {
  //var facebookAppEvents = FacebookAppEvents();

  loginEvent(String email) {
    // facebookAppEvents.logEvent(name: 'login_event_clicked', parameters: {
    //   'email': email,
    // });
  }
  registerEvent(String name, String email) {
    // facebookAppEvents.logEvent(
    //     name: 'register_event_clicked',
    //     parameters: {'email': email, 'name': name});
  }
  searchEvent(
      String destination,
      DateTime checkIn,
      DateTime checkOut,
      String numberOfPerson,
      String numberOfRooms,
      String numberOfNights,
      String promoCode) {
    // facebookAppEvents.logEvent(name: 'search_event_clicked', parameters: {
    //   'destinationHotels': destination,
    //   'checkIn': checkIn.toString(),
    //   'checkOut': checkOut.toString(),
    //   'promoCode': promoCode,
    //   'numberOfPerson': numberOfPerson,
    //   'numberOfRooms': numberOfRooms,
    //   'numberOfNights': numberOfNights
    // });
  }

  viewedContentEvent(
      String hotelId,
      DateTime checkIn,
      DateTime checkOut,
      String numberOfPerson,
      String numberOfRooms,
      String numberOfNights,
      String promoCode) {
    // facebookAppEvents
    //     .logEvent(name: 'viewedContent_event_clicked', parameters: {
    //   'hotelId': hotelId,
    //   'checkIn': checkIn.toString(),
    //   'checkOut': checkOut.toString(),
    //   'promoCode': promoCode,
    //   'numberOfPerson': numberOfPerson,
    //   'numberOfRooms': numberOfRooms,
    //   'numberOfNights': numberOfNights
    // });
  }

  initiateBookingEvent(
      String hotelId,
      String currency,
      String totalAmount,
      String checkIn,
      String checkOut,
      String numberOfPerson,
      String numberOfRooms,
      String numberOfNights) {
    // facebookAppEvents
    //     .logEvent(name: 'initiateBooking_event_clicked', parameters: {
    //   'hotelId': hotelId,
    //   'currency': currency,
    //   'totalSum': totalAmount,
    //   'checkIn': checkIn,
    //   'checkOut': checkOut,
    //   'numberOfPerson': numberOfPerson,
    //   'numberOfRooms': numberOfRooms,
    //   'numberOfNights': numberOfNights
    // });
  }
  addedPaymentInfo(){
    // facebookAppEvents.logEvent(
    //     name: 'addedPaymentInfo_event_clicked',
    //     parameters: {'paymentInfo':true});
  }
  completeBookingEvent(
      String hotelId,
      String currency,
      String totalAmount,
      String checkIn,
      String checkOut,
      String numberOfPerson,
      String numberOfRooms,
      String numberOfNights) {
    // facebookAppEvents
    //     .logEvent(name: 'completeBooking_event_clicked', parameters: {
    //   'hotelId': hotelId,
    //   'currency': currency,
    //   'totalSum': totalAmount,
    //   'checkIn': checkIn,
    //   'checkOut': checkOut,
    //   'numberOfPerson': numberOfPerson,
    //   'numberOfRooms': numberOfRooms,
    //   'numberOfNights': numberOfNights
    // });
  }
}
