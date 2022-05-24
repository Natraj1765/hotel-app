import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/models/roommodel.dart';
import 'package:jaz_app/screens/homebottombar.dart';
import 'package:jaz_app/screens/search/confirmsearch.dart';
import 'package:jaz_app/utils/GlobalStates.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/strings.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SummaryRoomList extends StatefulWidget {
  final List<Room> selectedRoomDetails;
  final String redirectPageName;
  final Function(List<Room>,String buttonName) summaryCallBack;
  SummaryRoomList(this.selectedRoomDetails, this.redirectPageName,
      {required this.summaryCallBack});

  @override
  _SummaryRoomListState createState() => _SummaryRoomListState();
}

class _SummaryRoomListState extends State<SummaryRoomList> {
  List<Room> roomDetails = [];
  bool isExpanded = true;
  double price = 0.0;
  double convertedPrice = 0.0;
  String selectedCurrency = "";
  String hotelName = "";
  String hotelId = "";
  @override
  void initState() {
    super.initState();
    roomDetails = new List<Room>.from(widget.selectedRoomDetails);
   // roomDetails = widget.selectedRoomDetails;
    selectedCurrency = GlobalState.selectedCurrency;
    hotelName = roomDetails[0].roomDetail["hotelName"];
    hotelId = roomDetails[0].roomDetail["hotelId"];
    getPriceDetails();
  }

  getPriceDetails() {
    price = 0.0;
    convertedPrice = 0.0;
    roomDetails.forEach((element) {
      if (element.roomDetail.isNotEmpty) {
        price = double.parse(element.roomDetail["price"]) + price;
        convertedPrice =
            double.parse(element.roomDetail["convertedPrice"]) + convertedPrice;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.077,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(12),
            boxShadow: boxShadow,
            color: Colors.white,
          ),
          child: isExpanded
              ? _buildChildrenTransmission(context)
              : _buildChildren(context),
        ),
        onTap: () {
          // setState(() {
          //   isExpanded = !isExpanded;
          // });
        },
      ),
    );
  }

  Widget _listDataOfExpansion(BuildContext context) {
    var overAllHeight = MediaQuery.of(context).size.height;
    // var buttonHeight =
    //     overAllHeight * (AppUtility().isTablet(context) ? 0.075 : 0.055);
    return Container(
      padding: EdgeInsets.only(bottom: 10),
       // height:
       //     (roomDetails.length) * (overAllHeight*0.2),
      width: MediaQuery.of(context).size.width * 1,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: roomDetails.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.002,
                        left: MediaQuery.of(context).size.width * 0.04),
                    child: Text(
                      "Room " + (index + 1).toString(),
                      style: roomNumberStyle,
                    ),
                  ),
                  if (roomDetails[index].roomDetail.isEmpty)
                    Container(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.01),
                      child: MaterialButton(
                          child: Text("Select a Room", style: modifybtnStyle),
                          onPressed: () async {
                            editPageRedirect(index);
                          }),
                    ),
                  if (roomDetails[index].roomDetail.isNotEmpty)
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.002,
                          right: MediaQuery.of(context).size.width * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            selectedCurrency != Strings.usd
                                ? AppUtility().getCurrentCurrency().toString()
                                : Strings.us$,
                            style: dollerBlackStyle,
                          ),
                          Text(
                            selectedCurrency != Strings.usd
                                ? double.parse(roomDetails[index]
                                        .roomDetail["convertedPrice"])
                                    .toStringAsFixed(2)
                                : double.parse(
                                        roomDetails[index].roomDetail["price"])
                                    .toStringAsFixed(2),
                            style: priceTextBlackStyle,
                            softWrap: true,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              if (roomDetails[index].roomDetail.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.002,
                      left: MediaQuery.of(context).size.width * 0.04),
                  child: Text(
                    roomDetails[index]
                        .roomDetail["selectedRoomName"]
                        .toString(),
                    style: roomNameStyle,
                  ),
                ),
              Padding(
                padding: EdgeInsets.only(
                    top: 5, left: MediaQuery.of(context).size.width * 0.04),
                child: Text(
                  AppUtility().getSingleRoomDetails(GlobalState.checkInDate,
                      GlobalState.checkOutDate, roomDetails[index]),
                  style: roomBookStyle,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5,
                        left: MediaQuery.of(context).size.width * 0.04,
                        bottom: 10),
                    child: Text(
                      AppUtility().getDateDiff(
                          GlobalState.checkInDate, GlobalState.checkOutDate),
                      style: roomBookStyle,
                    ),
                  ),
                  if(roomDetails[index].roomDetail.isNotEmpty)
                    Container(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.03),
                      child: GestureDetector(
                        child: Text("Edit",style: modifybtnStyle,),
                        onTap: () async {
                         editPageRedirect(index);
                        },
                      ),

                    ),
                ],
              ),
              Row(
                children: [
                  if (index != 0)
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.03),
                      child: GestureDetector(
                        child: Text("Remove",style: removeButtonStyle,),
                        onTap: () async {
                          roomDetails.removeAt(index);
                          for(int i=0;i<roomDetails.length;i++){
                              roomDetails[i].roomNumber = i+1;
                          }
                          GlobalState.selectedRoomList = roomDetails;
                          setState(() {});
                          getPriceDetails();
                          widget.summaryCallBack.call(roomDetails,"remove");
                        },
                      ),
                    )
                ],
              ),
            ],
          ));
        },
        // separatorBuilder: (BuildContext context, int index) {
        //   return Container(
        //       padding: EdgeInsets.only(
        //           right: MediaQuery.of(context).size.width * 0.04,
        //           left: MediaQuery.of(context).size.width * 0.04),
        //       child:  Divider(),
        //   );
        // },
      ),
    );
  }
  editPageRedirect(int index) async {
    SharedPreferences prefs =
        await SharedPreferences.getInstance();
    prefs.setInt("selectedIndex", index);
    roomDetails[index].roomDetail = HashMap();
    GlobalState.selectedRoomList = roomDetails;
    String? loginType = prefs.getString("loginType");
    print(widget.redirectPageName);
    print(loginType);
    if (widget.redirectPageName == "guest1") {
      if(loginType == "guest"){
        Navigator.pop(context);
      }
      Navigator.pop(context);
    }else if(widget.redirectPageName == "guest") {
      Navigator.pop(context);
    }else if (widget.redirectPageName == "guest2") {
      if(loginType == "guest"){
        Navigator.pop(context);
      }
      Navigator.pop(context);
      Navigator.pop(context);
    }
  }

  Widget _buildChildrenTransmission(BuildContext context) {
    return GestureDetector(
      child: Container(
        //  height: MediaQuery.of(context).size.height * 0.55,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            //  borderRadius: BorderRadius.circular(containerBorderRadius),
            color: Colors.white,
            boxShadow: boxShadow),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildChildren(context),
            Padding(
              padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02),
              child: Divider(
                color: Uicolors.desText,
                thickness: 0.5,
              ),
            ),
            _listDataOfExpansion(context),

            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02),
              child: Divider(
                color: Uicolors.desText,
                thickness: 0.5,
              ),
            ),
            if (selectedCurrency != Strings.usd)
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.02,
                    right: MediaQuery.of(context).size.width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Icon(
                          Icons.info_outlined,
                          color: Uicolors.desText,
                          size: textFieldIconSize,
                        )),
                    Container(
                        padding: EdgeInsets.only(left: 5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          Strings.alternativeCurrency,
                          style: roomStrStyle,
                          softWrap: true,
                        )),
                  ],
                ),
              ),
            Container(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: 8,bottom: 8),
                child: Text(
                  Strings.incTaxFee,
                  style: roomBookStyle,
                ),
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.03,
                  right: MediaQuery.of(context).size.width * 0.03),
              child: Stack(
                children: [
                  if (selectedCurrency != Strings.usd)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              Strings.us$,
                              style: dollarGreyStyle,
                            ),
                            Text(
                              price.toStringAsFixed(2).toString(),
                              style: priceTextGreyStyle,
                              softWrap: true,
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            Strings.propertyCurrency,
                            style: exclTaxStyle,
                            softWrap: true,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            AppUtility().getCurrentCurrency().toString(),
                            style: dollerStyle,
                            textAlign: TextAlign.end,

                          ),
                          Text(
                            selectedCurrency == Strings.usd
                                ? price.toStringAsFixed(2).toString()
                                : convertedPrice.toStringAsFixed(2).toString(),
                            style: priceTextStyle,
                            softWrap: true,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      if (selectedCurrency != Strings.usd)
                        Container(
                          child: Text(
                            Strings.yourCurrency,
                            style: exclTaxStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            if(roomDetails.length < 3)
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02),
              child: Divider(
                color: Uicolors.desText,
                thickness: 0.5,
              ),
            ),
            Align(
              child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02,
                      bottom: MediaQuery.of(context).size.height * 0.01),
                  child: Center(
                 //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    child:
                      Container(
                        child: roomDetails.length < 3
                            ? MaterialButton(
                                color: Uicolors.buttonbg,
                                height: 30,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(15),
                                  side: BorderSide(
                                    color: Uicolors.buttonbg,
                                  ),
                                ),
                                child: Text("Select Next Room",
                                    style: exclTaxWhiteStyle),
                                onPressed: () {
                                  var parseData = roomDetails.map((e) => Room(roomNumber:e.roomNumber,adultList:List.from(e.adultList),childList:List.from(e.childList),roomDetail:e.roomDetail)).toList();
                                  if(parseData.length<3){
                                    parseData.add(Room(
                                        roomNumber: parseData.length + 1,
                                        adultList: [25],
                                        childList: [],
                                        roomDetail: HashMap()));
                                  }
                                  setState(() {

                                  });
                                  pushNewScreen(
                                    context,
                                    screen: ConfirmSearch(parseData,
                                        roomCallBack:
                                            (selectedRoomLists) async {
                                      print("room page call back");
                                           int diff = roomDetails.length-selectedRoomLists.length;
                                               for(int i=0;i<diff;i++){
                                               roomDetails.removeLast();
                                               }
                                              for (int i = 0; i < roomDetails.length; i++) {
                                             if (roomDetails[i] == selectedRoomLists[i]) {
                                          }else{
                                               selectedRoomLists[i].roomDetail = HashMap();
                                             }
                                      }
                                      GlobalState.selectedRoomList =
                                          selectedRoomLists;
                                      getPriceDetails();
                                      setState(() {
                                        roomDetails = selectedRoomLists;
                                      });
                                      widget.summaryCallBack.call(roomDetails,"edit");


                                    }),
                                    withNavBar:
                                        false, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                },
                              )
                            : Container(),
                      ),
                  )),
              //  alignment: Alignment.centerRight,
            )
          ],
        ),
      ),
      onTap: () {
        // setState(() {
        //   isExpanded = false;
        // });
      },
    );
  }

  Widget _buildChildren(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.017,
                left: MediaQuery.of(context).size.width * 0.04,bottom: MediaQuery.of(context).size.height * 0.017),
            child: Text(
              Strings.bookingStr,
              style: bookDetStyle,
            ),
          ),
          Container(
              padding: EdgeInsets.only(right: 10, top: MediaQuery.of(context).size.height * 0.017,bottom: MediaQuery.of(context).size.height * 0.017),
              child:
              GestureDetector(
                child:
                Text(Strings.tapToModify, style: modifybtnStyle),
                onTap: () {
                  GlobalState.destinationString = hotelName;
                  GlobalState.destinationValue = hotelId;
                  Navigator.of(context, rootNavigator: true)
                      .pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) =>
                          new HomeBottomBarScreen(
                              0) /*BottomBar()*/),
                          (Route<dynamic> route) => false);
                },
              )

            // Icon(
            //   isExpanded
            //       ? Icons.keyboard_arrow_up_sharp
            //       : Icons.keyboard_arrow_down_sharp,
            //   size: infoIconSize,
            //   color: Uicolors.buttonbg,
            // )
          )

        ]),
        ],
      );
  }
}
