import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseEvents{
  var analytics = FirebaseAnalytics.instance;

  loginEvent(String email)async{
    await analytics.logEvent(name: "LOGIN",parameters: {"email": email});
  }

  signupEvent(String email, String name)async{
    await analytics.logEvent(name: "SIGN_UP",parameters: {"email": email, "name": name});
  }

  searchEvent(String destination,
      DateTime checkIn,
      DateTime checkOut,
      String numberOfPerson,
      String numberOfRooms,
      String numberOfNights,
      String promoCode)async{
    await analytics.logEvent(name: "SEARCH",parameters: {
        'destinationHotels': destination,
        'checkIn': checkIn.toString(),
        'checkOut': checkOut.toString(),
        'promoCode': promoCode,
        'numberOfPerson': numberOfPerson,
        'numberOfRooms': numberOfRooms,
        'numberOfNights': numberOfNights
    });
  }


  addToWishListEvent(String currency, double? value,
      String? items)async{
    await analytics.logEvent(name: "ADD_TO_WISHLIST",parameters: {
      'currency': currency,
      'value': value,
      'items': items
    });
  }

  appOpenEvent()async{
    await analytics.logEvent(name: "APP_OPEN");
  }




  selectItemEvent(String? itemName,String itemId)async{
    await analytics.logEvent(name: "SELECT_ITEM",parameters: {
      'hotelName':itemName,
      'itemId':itemId
    });
  }


  viewPromotionEvent(String timeSlot,String hotelName, String locationID, String promoCode, String promoName)async{
    await analytics.logEvent(name: "VIEW_PROMOTION",parameters: {
      'Creative_Slot':timeSlot,
      'hotelName':hotelName,
      'Location_ID':locationID,
      'Promotion_ID':promoCode,
      'Promotion_Name':promoName
    });
  }

  viewSearchResultsEvent(String searchItem)async{
    await analytics.logEvent(name: "VIEW_SEARCH_RESULTS",parameters: {
      'searchItem':searchItem
    });
  }
}