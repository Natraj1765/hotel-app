import 'dart:convert';
import 'dart:io';
import 'dart:core';
import 'package:jaz_app/helper/graphqlconnectivity/constants.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  static String kRenderApiUrl = renderApiUrl;
  static String kBookingBaseUrl = bookingBaseUrl;
  static String _urlPostfix = "";

  static String _currencyUrl =
      "https://xecdapi.xe.com/v1/currencies.json/?obsolete=true";
  static String _convertCurrencyUrl = currencyUrl;
  String basicAuth = 'Basic ' +
      base64Encode(utf8.encode(
          '${xeUsernameOrAccountId}:${xePasswordOrAPIkey}'));
  // static String _baseUrl = "192.168.225.119:8443";
  // static String _urlPostfix = "/api";
  dynamic _defaultHeader = {
    "Content-type": "application/json",
    "Accept": "*/*"
  };
  Future<http.Response> getData(dynamic queryParam,
      String path,
      dynamic header,) async {
   // String token = await LoginRepo().getLoginToken();
  //  print("Header with token verify $token");
    dynamic headerWithToken = {
      "Content-type": "application/json",
      "Accept": "*/*",
   //   'Authorization': 'Bearer $token',
      'Access-Control-Allow-Origin': "*",
    };
    print(kBookingBaseUrl + _urlPostfix + path);
    var url = Uri.https(kBookingBaseUrl, path, queryParam);
    print('urls:$url');
    return http.get(url, headers: header == null ? headerWithToken : header);
  }
  Future<http.Response> getRenderData(dynamic queryParam,
      String path,
      dynamic header,) async {
    dynamic headerWithToken = {
      "Content-type": "application/json",
      "Accept": "*/*",
      //   'Authorization': 'Bearer $token',
      'Access-Control-Allow-Origin': "*",
    };
    var url = Uri.https(kRenderApiUrl, path, queryParam);
    print('urls:$url');
    return http.get(url, headers: header == null ? headerWithToken : header);
  }

  Future<http.Response> convertCurrency(Map<String,dynamic> queryParam)  {
    dynamic headerWithToken = {
      "Content-type": "application/json",
      "Accept": "*/*",
        'Authorization': basicAuth,
    };
    var url = Uri.https(_convertCurrencyUrl,"/v1/convert_from.json", queryParam);
    print(url);
    return http.get(url, headers:headerWithToken);
  }
}