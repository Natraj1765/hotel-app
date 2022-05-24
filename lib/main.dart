
// @dart=2.9
import 'dart:async';
import 'dart:io';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:jaz_app/helper/graphqlconnectivity/constants.dart';
import 'package:jaz_app/screens/homebottombar.dart';
import 'package:jaz_app/utils/GlobalStates.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/commonutils.dart';
import 'package:jaz_app/utils/firebase_events.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/navigatorService.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helper/utils.dart';

const _kShouldTestAsyncErrorOnInit = false;
const _kTestingCrashlytics = true;

void main() async {
  HttpOverrides.global = new MyHttpOverrides();

     runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    await Firebase.initializeApp();
  //  GlobalState.getSearchImage = await CommonUtils().getSearchPageImages();

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    runApp(MyApp());
    EasyLoading.instance
      ..maskType = EasyLoadingMaskType.none
      ..indicatorType = EasyLoadingIndicatorType.threeBounce
      ..indicatorType
      ..loadingStyle = EasyLoadingStyle.custom
      ..toastPosition = EasyLoadingToastPosition.bottom
      ..toastPosition = EasyLoadingToastPosition.bottom
      ..indicatorSize = 40.0
      ..radius = 10.0
      ..progressColor = Colors.grey
      ..backgroundColor = Colors.grey.withOpacity(0.4)
      ..indicatorColor = Uicolors.buttonbg
      ..textColor = Colors.black
      ..maskColor = Colors.grey.withOpacity(0.3)
      ..userInteractions = false
      ..dismissOnTap = false;
  }, (error, stackTrace) {
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });

}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = ((X509Certificate cert, String host, int port){
        if(kParseApiUrl.contains(host)){
          return true;
        }else if(renderApiUrl.contains(host)){
          return true;
        }else if(bookingBaseUrl.contains(host)){
          return true;
        }else if("images.jazhotels.com".contains(host)){
          return true;
        }else{
          return false;
        }
      });
  }
}

class MyState extends State<MyApp>{
  Future<void> _initializeFlutterFireFuture;


  @override
  Future<void> didChangeDependencies() async {
    precacheImage(AssetImage("assets/images/search-page-image-00.jpg"),context);
     super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      builder: (BuildContext context, Widget child) {
        final MediaQueryData data = MediaQuery.of(context);
        //EasyLoading.init();
        child = EasyLoading.init()(context,child);
        return MediaQuery(
          data: data.copyWith(
              textScaleFactor:1.0),
          child: child,
        );

      },
      debugShowCheckedModeBanner: false,
      title: 'Jaz Hotel Group',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
      ],
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: HomeBottomBarScreen(0), //BottomBar(),
    );
  }

  @override
  void initState() {
    super.initState();
   _initializeFlutterFireFuture = _initializeFlutterFire();
  }

  Future<void> _initializeFlutterFire() async {
    // Wait for Firebase to initialize
    print("initialize called");
    if (_kTestingCrashlytics) {
      // Force enable crashlytics collection enabled if we're testing it.
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    } else {
      // Else only enable it in non-debug builds.
      // You could additionally extend this to allow users to opt-in.
      await FirebaseCrashlytics.instance
          .setCrashlyticsCollectionEnabled(!kDebugMode);
    }

    // Pass all uncaught errors to Crashlytics.
    Function originalOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails errorDetails) async {
      await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
      // Forward to original handler.
      originalOnError(errorDetails);
    };

    // if (_kShouldTestAsyncErrorOnInit) {
    //   await _testAsyncErrorOnInit();
    // }
  }

 }
