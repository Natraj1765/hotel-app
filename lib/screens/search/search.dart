import 'dart:collection';
import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:graphql/client.dart';
import 'package:jaz_app/bloc/global_types_bloc.dart';
import 'package:jaz_app/helper/graphqlconnectivity/constants.dart';
import 'package:jaz_app/helper/search_service.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/models/graphql/graphql_api.graphql.dart';
import 'package:jaz_app/models/roommodel.dart';
import 'package:jaz_app/models/user/user.dart';
import 'package:jaz_app/screens/product_overview/overviewbottombarscreen.dart';
import 'package:jaz_app/screens/search/confirmsearch.dart';
import 'package:jaz_app/screens/search/recent_searchPage.dart';
import 'package:jaz_app/screens/search/searchdetailpage.dart';
import 'package:jaz_app/utils/GlobalStates.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/commonutils.dart';
import 'package:jaz_app/utils/facebookevents.dart';
import 'package:jaz_app/utils/firebase_events.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:jaz_app/widgets/member_list.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../graphql_provider.dart';
import 'daterangepage.dart';
import 'package:http/http.dart' as http;
import 'package:jaz_app/utils/http_client.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:intl/intl.dart';

class Search extends StatefulWidget {
  //  final List<TravellerFilterInput> _roomArraylist;
  // final personDetails;
  //  Search(this._roomArraylist, this.personDetails);
  final Function(String) onBack;

  Search({required this.onBack});

  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<Search> {
  HttpClient httpClient = HttpClient();
  CommonUtils commonUtils = CommonUtils();

  bool isClearDestination = false;
  bool isClearTheme = false;
  String _personDetails = "2 Person - 1 Room";
  TextEditingController _promocode = TextEditingController();
  String pickedDate = "Sun 6 Jun - Mon 14 ( 8 night )";
  bool isPickedDate = false;

  GlobalKey enrollKey = GlobalKey();

  DateTime startDate = DateTime.now().add(const Duration(days: 3));
  DateTime endDate = DateTime.now().add(const Duration(days: 6));
  String destinationValue = "";
  String themeValue = "";
  String hotelNodeCode = "";
  List<TravellerFilterInput> roomRefType = [
    TravellerFilterInput(age: 25, refId: 1),
    TravellerFilterInput(age: 25, refId: 1)
  ];
  List<TravellersRoomInput> roomRef = [
    TravellersRoomInput(refIds: [1, 2])
  ];
  late GlobalTypesBloc bloc;
  AppUtility appUtility = AppUtility();
  SearchService searchService = SearchService();
  Room room = Room(
      childList: [], roomNumber: 1, adultList: [25, 25], roomDetail: HashMap());
  List<Room> confirmedRoomList = [];
  final TextEditingController typeAheadController = TextEditingController();

  int randomNumber =
      GlobalState.randomImageIndex == null ? 0 : GlobalState.randomImageIndex;
  Random random = new Random();
  List<String> backImages = [];
  late ScrollController scrollController;
  bool isScrollDown = false;
  final FirebaseAuth auth = FirebaseAuth.instance;
  var size;
  double height = 0.0;
  double blockSize = 0.0;
  double blockSizeVertical = 0.0;
  double boxHeight = 0.0;
  double topSpace = 0.0;
  double destinationTopSpace = 0.0;
  double searchTopSpace = 0.0;
  double searchBottomSpace = 0.0;
  double searchHeight = 0.0;
  double width = 0.0;
  double boxWidth = 0.0;
  double tabBoxWidth=0.0;
  double leftPadding = 0.0;
  double titleLeftPadding = 0.0;
  double logoSize = 0.0;
  double imageAndNameWidthPadding = 0.0;
  bool isCachedImage = false;
  int indicatorIndex = 0;
  int totalPerson = 0;
  PageController pageController = PageController(initialPage: 0);
  String destinationString = " ";
  Destinations$Query$Options$Destinations recentlyViewed =
      Destinations$Query$Options$Destinations();
  List<String> offerList =[];

  

  void initState() {
    super.initState();
    versionCheck(context);
    appUtility = AppUtility();
    scrollController = new ScrollController();
    scrollController.addListener(_scrollListener);
    //  typeAheadController.text = GlobalState.destinationString;
    destinationString = GlobalState.destinationString != null
        ? GlobalState.destinationString
        : "";
    commonUtils.getHotelDetails();
    backImages = searchImageUrls;
    offerList =[membershipImageUrl];
    // offerList = backImages.length<5?backImages:backImages.take(4).toList();
    // typeAheadController.addListener(_printLatestValue);
    setState(() {
      //_roomValues = dataFromSecondPa;

      if (GlobalState.selectedRoomRefType != null &&
          GlobalState.selectedRoomRefType.length > 0) {
        roomRefType = GlobalState.selectedRoomRefType;
      }
      if (GlobalState.selectedRoomRef != null &&
          GlobalState.selectedRoomRef.length > 0) {
        roomRef = GlobalState.selectedRoomRef;
      }
      if (GlobalState.personDetails != null &&
          GlobalState.personDetails != "") {
        _personDetails = GlobalState.personDetails;
      }
      if (GlobalState.checkInDate != null) {
        startDate = GlobalState.checkInDate;
      }
      if (GlobalState.checkOutDate != null) {
        endDate = GlobalState.checkOutDate;
      }
      if (GlobalState.selectedRoomList != null) {
        confirmedRoomList = GlobalState.selectedRoomList;
        for(int i=0;i<confirmedRoomList.length;i++){
          confirmedRoomList[i].roomDetail = HashMap();
        }
        GlobalState.selectedRoomList = confirmedRoomList;
      }
      if (GlobalState.selectedRoomList == null ||
          confirmedRoomList.length == 0) {
        confirmedRoomList.add(room);
        GlobalState.selectedRoomList = confirmedRoomList;
      }
      if (GlobalState.destinationValue != null) {
        destinationValue = GlobalState.destinationValue;
      }
      if (GlobalState.destinationNodeCode != null) {
        hotelNodeCode = GlobalState.destinationNodeCode;
      }
      print(GlobalState.destinationValue);
      print(GlobalState.destinationNodeCode);

      getPromoCode();
    });
    pickedDate = appUtility.getDateDiff(startDate, endDate);
  }

  versionCheck(context) async {
    var key = Platform.isAndroid
        ? "requiredBuildNumberAndroid"
        : "requiredBuildNumberIOS";
    List<Future<dynamic>> requestList = [
      PackageInfo.fromPlatform(),
      FirebaseFirestore.instance.collection('config').get()
    ];
    try {
      List allResponse = await Future.wait(requestList);
      var packageInfoRes = allResponse[0];
      var configResponse = allResponse[1];
      // configResponse.docs.forEach((doc) {
      //     print(doc[key]);
      //   });
      final currentBuildNumber = int.parse(packageInfoRes.buildNumber);
      final requiredBuildNumber = configResponse.docs[0][key];
      print(requiredBuildNumber);
      print(currentBuildNumber);
      if (requiredBuildNumber > currentBuildNumber) {
        AppUtility().confirmPop(context,
            "To use this app, download the latest version.", Strings.appName);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  didChangeDependencies() {
    Future.wait(searchImageUrls.map((element) {
      return AppUtility().cacheImage(context, element.toString());
    })).then((value) {
      setState(() {
        isCachedImage = true;
      });
    }).catchError((onError) {
      print(onError);
    });
    size = MediaQuery.of(context).size;
    var data = MediaQuery.of(context).textScaleFactor;
    getContext(size, context, data);
    height = MediaQuery.of(context).size.height;
    blockSize = MediaQuery.of(context).size.width / 100;
    blockSizeVertical = height / 100;

    // if (height > 800) {
    //   height = MediaQuery.of(context).size.height * 0.51;
    // } else {
    //  height = MediaQuery.of(context).size.height * 0.055;
    //}
    boxHeight = height * 0.055;
    topSpace = height * 0.02;
    destinationTopSpace = height * 0.04;
    searchTopSpace = height * 0.03;
    searchBottomSpace = height * 0.025;
    searchHeight = height * 0.055;
    width = MediaQuery.of(context).size.width;
    boxWidth = width * 0.883;
    tabBoxWidth=width * 0.91;
    leftPadding = width * 0.038;
    titleLeftPadding = width * 0.05;
    logoSize = (AppUtility().isTablet(context) ? 200.0 : 130.0);
    if (boxHeight < 40) {
      boxHeight = 45;
      searchHeight = 45;
    }
    imageAndNameWidthPadding = width * 0.025;
    super.didChangeDependencies();
  }

  getPromoCode() async {
    if (GlobalState.promoCode != null &&
        GlobalState.promoCode != membershipCode) {
      _promocode.text = GlobalState.promoCode;
    } else if (GlobalState.promoCode == membershipCode &&
        GlobalState.offerStartStr == Strings.offers) {
      GlobalState.promoCode = "";
      _promocode.text = "";
    }
  }

  _scrollListener() {
    setState(() {
      if (scrollController.position.pixels > 150.0) {
        isScrollDown = true;
      } else {
        isScrollDown = false;
      }
    });
  }

  updateRecentView(Destinations$Query$Options$Destinations data) async {
    List<Destinations$Query$Options$Destinations> recentViewedList = [];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getStringList("recentViewed") != null) {
      recentViewedList = prefs
          .getStringList("recentViewed")!
          .map((e) =>
              Destinations$Query$Options$Destinations.fromJson(jsonDecode(e)))
          .toList();
    }

    for (int i = 0; i <= recentViewedList.length - 1; i++) {
      if (recentViewedList[i].value == data.value) {
        recentViewedList.removeAt(i);
      }
    }
    print("recently viewd  $data");
    if (data.label != null)  {
      recentViewedList.add(data);

      if (recentViewedList.length > 5) {
        recentViewedList.removeAt(0);
      }
      List<String> recentViewedEncoded = recentViewedList
          .map((recentViewed) => jsonEncode(recentViewed))
          .toList();
      prefs.setStringList('recentViewed', recentViewedEncoded);
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    typeAheadController.dispose();
    PaintingBinding.instance!.imageCache!.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    pageController = appUtility.isTablet(context)
        ? pageController
        : PageController(initialPage: 0, viewportFraction: 0.9);

    if (MediaQuery.of(context).size.width > 600) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
        DeviceOrientation.portraitUp,
      ]);
    } else {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    }

    return FocusDetector(
        onFocusGained: () async {
          getRoomRefDetails();
        },
        onFocusLost: () {
          if (randomNumber + 1 < backImages.length) {
            randomNumber += 1;
          } else {
            randomNumber = 0;
          }
          GlobalState.randomImageIndex = randomNumber;
        },
        child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
              if (destinationValue == "") {
                this.typeAheadController.text = "";
              }
            },
            child: Scaffold(
                backgroundColor: Colors.white,
                resizeToAvoidBottomInset: false,
                body: Stack(children: [
                  CustomScrollView(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(
                        parent: const AlwaysScrollableScrollPhysics()),
                    slivers: <Widget>[
                      //  controller: scrollController,
                      SliverAppBar(
                        expandedHeight: AppUtility().isTablet(context)
                            ? MediaQuery.of(context).size.height * .37
                            : MediaQuery.of(context).size.height * .32,
                        stretch: true,
                        backgroundColor: Colors.transparent,
                        flexibleSpace: FlexibleSpaceBar(
                          // centerTitle: true,
                          // title: Text("Collapsing Toolbar"),
                          background: !isCachedImage
                              ? Image.asset(
                                  "assets/images/search-page-image-00.jpg",
                                  fit: BoxFit.cover,
                                )
                              : appUtility.loadImage(backImages[randomNumber]),
                          stretchModes: <StretchMode>[
                            StretchMode.zoomBackground,
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          children: <Widget>[
                            Container(
                              key: enrollKey,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: topSpace),
                              padding: EdgeInsets.fromLTRB(
                                  titleLeftPadding, 0, 0, 0),
                              child: Text(
                                "Where you want to go?",
                                style: loginAccountStyle,
                                maxLines: 2,
                              ),
                            ),
                            AppUtility().isTablet(context)
                                ? Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                                child: Column(
                                          children: [
                                            destinationWidget(leftPadding,
                                                boxWidth, boxHeight, topSpace),
                                            personWidget(leftPadding, boxWidth,
                                                boxHeight, topSpace)
                                          ],
                                        ))),
                                        Expanded(
                                            child: Container(
                                                child: Column(
                                          children: [
                                            calendarWidget(leftPadding,
                                                boxWidth, boxHeight, topSpace),
                                            promoCodeWidget(leftPadding,
                                                boxWidth, boxHeight, topSpace),
                                          ],
                                        )))
                                      ],
                                    ),
                                  )
                                : Column(
                                    children: [
                                      destinationWidget(leftPadding, boxWidth,
                                          boxHeight, topSpace),
                                      calendarWidget(leftPadding, boxWidth,
                                          boxHeight, topSpace),
                                      personWidget(leftPadding, boxWidth,
                                          boxHeight, topSpace),
                                      promoCodeWidget(leftPadding, boxWidth,
                                          boxHeight, topSpace),
                                    ],
                                  ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: AppUtility().isTablet(context)
                                      ? MediaQuery.of(context).size.width * 0.15
                                      : 0,
                                  right: AppUtility().isTablet(context)
                                      ? MediaQuery.of(context).size.width * 0.15
                                      : 0,
                                  top: searchTopSpace,
                                  bottom: 5),
                              child: Center(
                                child: FlatButton(
                                    color: Uicolors.buttonbg,
                                    minWidth: boxWidth,
                                    height: searchHeight,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(height / 2),
                                    ),
                                    child: Text(
                                      Strings.search.toUpperCase(),
                                      style: buttonStyle,
                                    ),
                                    onPressed: () async {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      searchOnClick(
                                          _promocode.text.toString(), "search");
                                    }),
                              ),
                            ),
                            if (auth == null || auth.currentUser == null)
                            Container(
                              alignment: Alignment.center,
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height*0.025,
                                    left: MediaQuery.of(context).size.width*0.050,
                                    right: MediaQuery.of(context).size.width*0.050,
                                    bottom: MediaQuery.of(context).size.height*0.0064),
                              child: GestureDetector(
                                onTap: ()=> widget.onBack("3"),
                                child: Image.asset("assets/images/mem_image.png",
                                  fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: topSpace),
                              padding: EdgeInsets.fromLTRB(
                                  titleLeftPadding+5, 0, 0, 0),
                              child: Text(Strings.exploreOffers,
                                  style: loginAccountStyle),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    left: leftPadding, right: leftPadding),
                                height:
                                    MediaQuery.of(context).size.height * 0.475,
                                // width: MediaQuery.of(context).size.width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  boxShadow: null,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: topSpace, bottom: 10),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.416,
                                      decoration: BoxDecoration(
                                          // color: Colors.orange,
                                          ),
                                      child: PageView.builder(
                                        controller: pageController,
                                        itemCount: appUtility.isTablet(context)
                                            ? (offerList.length / 2).round()
                                            : offerList.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            //width: MediaQuery.of(context).size.width,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Row(
                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: (){
                                                    if (auth== null || auth.currentUser == null){
                                                      widget.onBack("3");
                                                    }else{
                                                      searchOnClick(
                                                          membershipCode, "member");
                                                    }
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.rectangle,
                                                      boxShadow: boxShadow,
                                                    ),
                                                    // margin: EdgeInsets.only(left: 10,right: 10),
                                                    width: appUtility
                                                            .isTablet(context)
                                                        // ? boxWidth / 2
                                                        ?tabBoxWidth
                                                        : boxWidth - 40,
                                                    height: appUtility
                                                        .isTablet(context)?
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                        0.372
                                                        :
                                                    MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.372,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                      children: [
                                                        new Image.network(
                                                          offerList[
                                                              appUtility.isTablet(
                                                                      context)
                                                                  ? index * 2
                                                                  : index],
                                                          fit: BoxFit.cover,
                                                          width: MediaQuery.of(context).size.width,
                                                          //height:  MediaQuery.of(context).size.height * 0.416,
                                                          height: MediaQuery.of(context).size.height * 0.32,
                                                        ),
                                                        Container(
                                                          height: MediaQuery.of(
                                                              context)
                                                              .size
                                                              .height *
                                                              0.052,
                                                          padding: EdgeInsets
                                                              .only(bottom: 5,top: 10,left: 10,right: 10),
                                                          color:
                                                              Uicolors.buttonbg,
                                                          child: Text(
                                                              Strings.bookNowOffer,
                                                              style: buttonStyle,
                                                              maxLines: 2),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                if ((index * 2 + 1) <
                                                    offerList.length &&
                                                    appUtility
                                                        .isTablet(context))
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.rectangle,
                                                      boxShadow: boxShadow,
                                                    ),
                                                    margin: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    width: boxWidth / 2 - 10,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.43,
                                                    child: Column(
                                                      children: [
                                                        new Image.network(
                                                          offerList[
                                                              index * 2 + 1],
                                                          fit: BoxFit.cover,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.32,
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 15,
                                                                  horizontal:
                                                                      10),
                                                          color:
                                                              Uicolors.buttonbg,
                                                          child: Text(
                                                              "Book Now! \$ Save 15% Offer Till 25th December",
                                                              style:
                                                                  buttonStyle,
                                                              maxLines: 2),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                if ((index * 2 + 1) >
                                                    offerList.length &&
                                                    appUtility
                                                        .isTablet(context))
                                                  Container()
                                              ],
                                            ),
                                          );
                                          // Container(
                                          //   child: new Image.network(
                                          //     backImages[index],
                                          //     fit: BoxFit.cover,
                                          //   ),
                                          // );
                                        },
                                      ),
                                    ),
                                    SmoothPageIndicator(
                                        controller: pageController,
                                        count: appUtility.isTablet(context)
                                            ? (offerList.length / 2).round()
                                            : offerList.length,
                                        effect: ExpandingDotsEffect(
                                            activeDotColor: Uicolors.buttonbg,
                                            dotColor: Colors.grey,
                                            dotWidth: offerList.length == 1
                                                ? 0
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02,
                                            dotHeight: offerList.length == 1
                                                ? 0
                                                : MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02),
                                        // your preferred effect
                                        onDotClicked: (index) {}),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  !isScrollDown
                      ? Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.fromLTRB(0, 0,
                                  MediaQuery.of(context).size.width * 0.04, 0),
                              child: Image.asset(
                                "assets/images/logo_white.png",
                                width: logoSize,
                                height: logoSize,
                              )),
                        )
                      : Container(),
                  /*!isScrollDown
                      ? Positioned(
                          bottom: getDyValue(),
                          right: 0,
                          child: GestureDetector(
                              onTap: () {
                                if (auth == null || auth.currentUser == null) {
                                  widget.onBack("3");
                                } else {
                                  //  _promocode.text=membershipCode;
                                  //   SharedPreferences prefs = await SharedPreferences.getInstance();
                                  //   prefs.setString(Strings.memberShipCode, membershipCode);
                                  GlobalState.offerStartStr = Strings.offers;
                                  searchOnClick(membershipCode, "member");
                                }
                              },
                              child: Container(
                                //  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(
                                    right: 8,),
                                  child: Image.asset(
                                    "assets/images/Enroll_now-text-animation.gif",
                                    height: (AppUtility().isTablet(context) ? 180.0 : 120.0),
                                  ))),
                        )
                      : Container()*/
                ]))));
  }

  getDyValue() {
    if (enrollKey.currentContext != null) {
      RenderBox box = enrollKey.currentContext!.findRenderObject() as RenderBox;
      Offset position =
          box.localToGlobal(Offset.zero); //this is global position
      double y = (MediaQuery.of(context).size.height -
          (position.dy + (MediaQuery.of(context).size.height*0.12))); //this is y - I think it's what you want
      return y;
    } else
      0;
  }

  void calenderPageRedirect(BuildContext context) async {
    pushNewScreen(
      context,
      screen: DateRangePage(
        startDate,
        endDate,
        selectedDateRange: (start, end) {
          setState(() {
            startDate = start;
            endDate = end;
            pickedDate = appUtility.getDateDiff(startDate, endDate);
          });
        },
      ),
      withNavBar: false, // OPTIONAL VALUE. True by default.
      pageTransitionAnimation: PageTransitionAnimation.cupertino,
    );
  }

  void goToRoomScreen(BuildContext context) async {
    pushNewScreen(
      context,
      screen:
          ConfirmSearch(confirmedRoomList, roomCallBack: (selectedRoomLists) {
        GlobalState.selectedRoomList = selectedRoomLists;
        setState(() {
          confirmedRoomList = selectedRoomLists;
          getRoomRefDetails();
        });
      }),
      withNavBar: false, // OPTIONAL VALUE. True by default.
      pageTransitionAnimation: PageTransitionAnimation.cupertino,
    );
  }

  getRoomRefDetails() {
    confirmedRoomList = GlobalState.selectedRoomList;
    totalPerson = 0;
    confirmedRoomList.forEach((element) {
      totalPerson += element.adultList.length + element.childList.length;
    });
    var personString = "", roomString = "";
    if (totalPerson > 1) {
      personString = Strings.persons;
    } else {
      personString = Strings.person;
    }
    if (confirmedRoomList.length > 1) {
      roomString = Strings.roomsStr;
    } else {
      roomString = Strings.roomStr;
    }
    int refId = 0;
    roomRefType = [];
    roomRef = [];
    for (int i = 0; i < confirmedRoomList.length; i++) {
      List<int> refs = [];
      confirmedRoomList[i].adultList.forEach((adult) {
        roomRefType.add(TravellerFilterInput(age: adult, refId: ++refId));
        refs.add(refId);
      });
      confirmedRoomList[i].childList.forEach((child) {
        roomRefType
            .add(TravellerFilterInput(age: int.parse(child), refId: ++refId));
        refs.add(refId);
      });
      TravellersRoomInput selectedRoomRef = TravellersRoomInput(refIds: refs);
      roomRef.add(selectedRoomRef);
    }
    setState(() {
      GlobalState.selectedRoomRef = roomRef;
      GlobalState.selectedRoomRefType = roomRefType;
      _personDetails = totalPerson.toString() +
          " " +
          personString +
          " - " +
          confirmedRoomList.length.toString() +
          " " +
          roomString;
    });
    GlobalState.personDetails = _personDetails;
  }

  searchOnClick(String promoCode, String type) async {
    String selectedPromoCode = "";
    var errorMessage = "";
    final User? user = auth.currentUser;
    GlobalState.checkInDate = startDate;
    GlobalState.checkOutDate = endDate;
    GlobalState.personDetails = _personDetails;
    if (destinationValue != "" && type != "member") {
      GlobalState.destinationValue = destinationValue;
      GlobalState.destinationNodeCode = hotelNodeCode;
    } else {
      this.typeAheadController.text = "";
      GlobalState.destinationValue = "";
      destinationValue = "";
      hotelNodeCode = "";
    }
    GlobalState.themeValue = themeValue;
    GlobalState.selectedRoomRef = roomRef;
    GlobalState.selectedRoomRefType = roomRefType;
    GlobalState.promoCode = promoCode;
    EasyLoading.show();


    if (GlobalState.promoCode != null && GlobalState.promoCode != "") {
      selectedPromoCode = GlobalState.promoCode;
    } else if (user != null) {
      selectedPromoCode = membershipCode;
    }

    GlobalState.promoCode = selectedPromoCode;
    // FacebookEvents().searchEvent(destinationString,startDate,endDate,
    //      AppUtility().getNumberOfPerson(confirmedRoomList),confirmedRoomList.length.toString(),
    //     AppUtility().getNumberOfNight(startDate, endDate),
    //     selectedPromoCode);
    FirebaseEvents().searchEvent(destinationString,
        startDate, endDate,
        AppUtility().getNumberOfPerson(confirmedRoomList), confirmedRoomList.length.toString(),
        AppUtility().getNumberOfNight(startDate, endDate),
        selectedPromoCode);       /// Search Event triggered with additional params.
    ProductsQueryArguments args = searchService.getProductQueryArguments(
        startDate,
        endDate,
        destinationValue,
        themeValue,
        roomRef,
        roomRefType,
        type == "member"
            ? selectedPromoCode
            : _promocode.text.toString() != ""
                ? selectedPromoCode
                : "");
    args.resultsPerPage = 10;
    args.showingResultsFrom = 0;
    print(args);
    print(_promocode.text.toString());

    ProductsQueryArguments memberArgs = searchService.getProductQueryArguments(
        startDate,
        endDate,
        destinationValue,
        themeValue,
        roomRef,
        roomRefType,
        selectedPromoCode);
    memberArgs.resultsPerPage = 1000;
    memberArgs.showingResultsFrom = 0;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("selectedIndex");
    try {
      List<Future<dynamic>> requestQuery = [
        client.query(
          QueryOptions(
              document: PRODUCTS_QUERY_QUERY_DOCUMENT,
              variables: args.toJson()),
        ),
      ];
      if (user != null) {
        final userId = user.uid;
        requestQuery.add(
            FirebaseFirestore.instance.collection('users').doc(userId).get());
        if (selectedPromoCode != "" &&
            type != "member" &&
            _promocode.text.toString() == "") {
          requestQuery.add(client.query(
            QueryOptions(
                document: PRODUCTS_QUERY_QUERY_DOCUMENT,
                variables: memberArgs.toJson()),
          ));
        }
      }
      List allResponse;
      HashMap<String, ProductsQuery$Query$Products$PackageProducts>
          membershipData = HashMap();
      if (hotelNodeCode != "") {
        // requestQuery.add(CommonUtils().getOverView(hotelNodeCode));
      }
      allResponse = await Future.wait(requestQuery);
      EasyLoading.dismiss();
      QueryResult queryResult = allResponse[0];

      if (user != null) {
        UserModel users = UserModel.fromJson(
            (allResponse[1] as DocumentSnapshot).data()
                as Map<String, dynamic>);
        GlobalState.favList = users.favourites;
        final memberException = queryResult.hasException.hashCode;
        if (selectedPromoCode != "" &&
            type != "member" &&
            _promocode.text.toString() == "") {
          QueryResult memberResult = allResponse[2];
          if (memberResult.hasException) {
          } else {
            ProductsQuery$Query membershipProduct =
                ProductsQuery$Query.fromJson(memberResult.data ?? {});
            membershipProduct.products!.packageProducts!.forEach((element) {
              membershipData.putIfAbsent(
                  element.hotel!.giataId.toString(), () => element);
            });
          }
        }
      }
      final exception = queryResult.hasException.hashCode;
      if (queryResult.hasException) {
        if (exception is NetworkException) {
          errorMessage = Strings.noInternet;
        } else {
          errorMessage = Strings.errorMessage;
        }
        AppUtility().showToastView(errorMessage, context);
      } else {
        ProductsQuery$Query product =
            ProductsQuery$Query.fromJson(queryResult.data ?? {});
        if (product.products!.packageProducts!.length == 0) {
          AppUtility().showToastView(Strings.emptyHotel, context);
        } else {
          if (hotelNodeCode != "") {
            if (membershipData.containsKey(product
                .products!.packageProducts![0].hotel!.giataId
                .toString())) {
              product.products!.packageProducts![0] = membershipData[product
                  .products!.packageProducts![0].hotel!.giataId
                  .toString()]!;
            }
            HashMap<String, dynamic> overViewResponse =
                allResponse[requestQuery.length - 1];
            if (overViewResponse["overViewResponseCode"] == Strings.failure ||
                overViewResponse["descResponseCode"] == Strings.failure) {
              updateRecentView(recentlyViewed);
              pushNewScreen(
                context,
                screen: OverviewBottombarScreen(0, HashMap(),
                    product.products!.packageProducts![0], "", []),
                //OverViewBottomBar(0, listPage, product,description,expansionList),
                withNavBar: false,
                // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            } else {
              if (product.products!.packageProducts!.length > 0) {
                updateRecentView(recentlyViewed);
                pushNewScreen(
                  context,
                  screen: OverviewBottombarScreen(
                      0,
                      overViewResponse["bottomList"],
                      product.products!.packageProducts![0],
                      overViewResponse["description"],
                      overViewResponse["expansion"]),
                  //OverViewBottomBar(0, listPage, product,description,expansionList),
                  withNavBar: false,
                  // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              } else {
                AppUtility().showToastView(Strings.emptyHotel, context);
              }
            }
          } else {
            updateRecentView(recentlyViewed);
            pushNewScreen(
              context,
              screen: SearchDetail(
                  context,
                  destinationValue,
                  themeValue,
                  startDate,
                  endDate,
                  roomRefType,
                  roomRef,
                  type == "member"
                      ? selectedPromoCode
                      : _promocode.text.toString() != ""
                          ? selectedPromoCode
                          : "",
                  _personDetails,
                  product,
                  membershipData),
              withNavBar: false, // OPTIONAL VALUE. True by default.
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          }
        }
      }
    } on SocketException catch (_) {
      AppUtility().showToastView(Strings.noInternet, context);
    } catch (e) {
      print(e);
      AppUtility().showToastView(Strings.errorMessage, context);
    }
    EasyLoading.dismiss();
  }

  Widget destinationWidget(leftPadding, boxWidth, boxHeight, topSpace) {
    return GestureDetector(
      onTap: () async {
        FocusScope.of(context).unfocus();
        DateFormat startFormatter = DateFormat('yyyy-MM-dd');
        String checkInDate = startFormatter.format(startDate);
        String checkOutDate = startFormatter.format(endDate);
        HashMap<String, dynamic> params = HashMap();
        params.putIfAbsent("distance", () => "100");
        params.putIfAbsent("check_in", () => checkInDate);
        params.putIfAbsent("check_out", () => checkOutDate);
        params.putIfAbsent(
            "rooms", () => (confirmedRoomList.length).toString());
        params.putIfAbsent("adults",
            () => appUtility.getNumberOfAdults(confirmedRoomList).toString());
        params.putIfAbsent("children",
            () => appUtility.getNumberOfChildren(confirmedRoomList).toString());
        params.putIfAbsent("promo_code", () => _promocode.text);
        pushNewScreen(
          context,
          screen: RecentSearch(
            destinationValue: (data, selectionType) {
              setState(() {
                recentlyViewed = data;
                print(data);
                destinationString = data.label.toString();
                GlobalState.destinationString = data.label.toString();
                if (data.nodeCode != "null" &&
                    data.nodeCode != "" &&
                    data.nodeCode != null) {
                  hotelNodeCode = data.nodeCode.toString();
                } else {
                  hotelNodeCode = "";
                }
                if (data.value != "") {
                  destinationValue = data.value.toString();
                } else {
                  destinationValue = "";
                }
                isClearDestination = false;
              });
            },
            typeAheadController: typeAheadController,
            getLocationAvailabilityParam: params,
          ),
          withNavBar: false, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      },
      child: Container(
          margin: EdgeInsets.only(top: topSpace),
          // alignment: Alignment.center,
          width: boxWidth,
          height: boxHeight,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(fieldBorderRadius),
              ),
              border: border,
              color: Colors.white),
          child: Stack(alignment: Alignment.center, children: <Widget>[
            Positioned(
                left: leftPadding,
                child: Container(
                  child: Image.asset(
                    "assets/images/destination-icon.png",
                    width: textFieldIconSize,
                    height: textFieldIconSize,
                    color: Uicolors.textFieldIcon,
                  ),
                )),
            Container(
              // width: boxWidth,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                  left: leftPadding + textFieldIconSize + 10,
                  right: leftPadding + textFieldIconSize + 10),
              child: Text(
                destinationString == ""
                    ? Strings.destinationHintText
                    : destinationString,
                style: textFieldStyle,
                textAlign: TextAlign.left,
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),
            Positioned(
              right: (AppUtility().isTablet(context) ? leftPadding : 17),
              child: Container(
                child: /*IconButton(
                  icon: */Image.asset(
                    "assets/images/down-arrow.png",
                    width:
                        backIconSize, //(AppUtility().isTablet(context)?24:15),
                    height:
                        backIconSize, //(AppUtility().isTablet(context)?24:15),
                  ),
                  // Icon(
                  //   Icons.close,
                  //   color: Uicolors.buttonbg,
                  // ),
                  //   color: destinationValue.isNotEmpty?Uicolors.desText:Colors.transparent,
                  //color: Uicolors.desText,
                  //iconSize: textFieldIconSize0,
                  //(AppUtility().isTablet(context)?30:20),
                //   onPressed: () {
                //     setState(() {
                //       isClearDestination = true;
                //       destinationValue = "";
                //     });
                //   },
                // ),
                decoration: new BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
          ])),
    );
  }

  Widget calendarWidget(leftPadding, boxWidth, boxHeight, topSpace) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          calenderPageRedirect(context);
        },
        child: Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: topSpace),
          padding: EdgeInsets.fromLTRB(leftPadding, 0, 0, 0),
          width: AppUtility().isTablet(context) ? boxWidth / 2 : boxWidth,
          height: boxHeight,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(fieldBorderRadius)),
              border: border,
              color: Colors.white),
          child: Row(children: [
            Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/calender-icon-gray.png",
                  width: textFieldIconSize,
                  height: textFieldIconSize,
                  color: Uicolors.textFieldIcon,
                )),
            Flexible(
                child: Container(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                pickedDate.toString(),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: textFieldStyle,
              ),
            )),
          ]),
        ));
  }

  Widget personWidget(leftPadding, boxWidth, boxHeight, topSpace) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          goToRoomScreen(context);
        },
        child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: topSpace),
            padding: EdgeInsets.fromLTRB(leftPadding, 0, 0, 0),
            width: boxWidth,
            height: boxHeight,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(fieldBorderRadius)),
                border: border,
                color: Colors.white),
            child: Row(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/persons-icon.png",
                      width: textFieldIconSize,
                      height: textFieldIconSize,
                      color: Uicolors.textFieldIcon,
                    )),
                Container(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    _personDetails,
                    style: textFieldStyle,
                  ),
                )
              ],
            )));
  }

  Widget promoCodeWidget(leftPadding, boxWidth, boxHeight, topSpace) {
    return Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(top: topSpace),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: AppUtility().isTablet(context) ? boxWidth / 2 : boxWidth,
        height: boxHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(fieldBorderRadius)),
            border: border,
            color: Colors.white),
        child: Container(
          child: Row(children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(leftPadding, 0, 10, 0),
              child: Image.asset(
                "assets/images/ticket.png",
                width: textFieldIconSize,
                height: textFieldIconSize,
                color: Uicolors.textFieldIcon,
              ),
            ),
            Container(
                width: AppUtility().isTablet(context)
                    ? boxWidth / 2 - leftPadding - textFieldIconSize - 12
                    : boxWidth - leftPadding - textFieldIconSize - 12,
                child: TextFormField(
                  style: textFieldStyle,
                  controller: _promocode,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintStyle: placeHolderStyle,
                    hintText: Strings.promocode,
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    isCollapsed: true,
                  ),
                )),
          ]),
        ));
  }
}

class ColorBox extends StatelessWidget {
  final Color color;

  const ColorBox(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
    );
  }
}
