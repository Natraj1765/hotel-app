import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:graphql/client.dart';
import 'package:http/http.dart' as http;
import 'package:jaz_app/helper/graphqlconnectivity/constants.dart';
import 'package:jaz_app/helper/search_service.dart';
import 'package:jaz_app/models/currencyModel.dart';
import 'package:jaz_app/models/graphql/graphql_api.graphql.dart';
import 'package:jaz_app/utils/GlobalStates.dart';
import 'package:jaz_app/utils/http_client.dart';
import 'package:intl/intl.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/utils/strings.dart';
import '../graphql_provider.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class CommonUtils {
  HttpClient httpClient = HttpClient();
  FirebaseAuth auth = FirebaseAuth.instance;


  getHotelDetails() async {
    HashMap<String, dynamic> params = HashMap();
    params.putIfAbsent("renderPage", () => "about");
    params.putIfAbsent("_locale", () => "en-gb");
    var response;
    httpClient.getRenderData(params, "/api/renders", null).then((value) {
      response = value;
      if (response.statusCode == 200 && json.decode(response.body) != null) {
        var result = json.decode(response.body);
        result["content"]["footer"]["children"].forEach((element) {
          if (element["children"].length > 0) {
            element["children"].forEach((e) {
              if (e["module"]["result"]["links"] != null) {
                e["module"]["result"]["links"].forEach((termsLink) {

                  if (element["children"][0]["module"]["result"] != null) {
                    GlobalState.contactUsLinks =
                    element["children"][0]["module"]["result"];
                  }
                  if (termsLink["label"]
                      .toString()
                      .contains("Terms & Conditions")) {
                    GlobalState.termsAndConditionUrl =
                        termsLink["path"].toString();
                  }
                });
              }
            });
          }
          if (result["content"]["footer"]["children"][1] != null) {
            if (result["content"]["footer"]["children"][1]["module"] != null) {
              GlobalState.socialMediaLinks = result["content"]["footer"]
              ["children"][1]["module"]['result']['socialMediaLinks']; // get social media links
            }}
        });

        if (result["content"]["main"]["children"][0]["module"]["result"]
                ["headline"] !=
            null) {
          GlobalState.aboutsHeadLine = result["content"]["main"]["children"][0]
              ["module"]["result"]["headline"];
        } // get and save about us headline

        if (result["content"]["main"]["children"][2]["module"]["result"]
                ["headline"] !=
            null) {
          GlobalState.aboutUsContentHeadLine = result["content"]["main"]
              ["children"][2]["module"]["result"]["headline"];
        }

        List<String> imageList = [];

        // about us
        result["content"]["main"]["children"][2]["module"]["result"]["images"]
            .forEach((images) {
          imageList.add(AppUtility().getProxyImage(images));
        //   if (images!=null&&images['image']['secure_url'] != null) {
        //     imageList.add(images['image']['secure_url']);
        //   }
          // get image path and save in global state
        });
        GlobalState.imageList = imageList;
        if (result["content"]["main"]["children"][2]["module"]["result"]
                ["text"] !=
            null) {
          GlobalState.aboutUsContent = AppUtility().parseHtmlString(
              result["content"]["main"]["children"][2]["module"]["result"]
                  ['text']);
        } // get and save about us content
        // about us
      } else {}
    });
  }


  Future<CurrencyResponse> readCurrencies() async {
    final String response =
        await rootBundle.loadString('assets/currency/currencies.json');
    final data = await json.decode(response);
    return CurrencyResponse.fromJson(data);
  }

  HashMap<String, dynamic> getOverView(String giataId) {
    HashMap<String, dynamic> params = HashMap();
    HashMap<String,dynamic> descResult = HashMap();

   return descResult;
  }

  Future<String> convertCurrency(String price,String currencyCode) async {
    var selectedPrice ="";
    HashMap<String, dynamic> currencyParams = HashMap();
    currencyParams.putIfAbsent("from", () => Strings.usd);
    currencyParams.putIfAbsent("to", () => currencyCode);
    currencyParams.putIfAbsent("amount", () => price);
    var response = await httpClient.convertCurrency(currencyParams);
    EasyLoading.dismiss();
    if (response.statusCode == 200 &&
        json.decode(response.body) != null) {
        var resp = json.decode(response.body);
        selectedPrice = resp["to"][0]["mid"].toStringAsFixed(2).toString();
      } else {
       selectedPrice = Strings.failure;
    }
    return selectedPrice;
  }



}
