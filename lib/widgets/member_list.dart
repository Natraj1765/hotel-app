import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaz_app/helper/graphqlconnectivity/constants.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/strings.dart';

class MemberListScreen extends StatefulWidget {
  final Function(String) onBack;
  MemberListScreen({required this.onBack,required});

@override
_MemberListScreenState createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Uicolors.sslEncriptionBgColor,
              padding: EdgeInsets.all(10),
              child: Text(
                  "Membership Plan - Save 15%",
                  style: priceTextStyle),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  left:MediaQuery.of(context).size.width*0.1,
                  right:MediaQuery.of(context).size.width*0.1),
              child: Text((auth == null || auth.currentUser == null)?"REGISTER / LOGIN TO AVAIL 15% OFFER":"ENJOY MEMBERSHIP OFFER , GET 15% OFFER",
                style: memberOfferText,textAlign: TextAlign.center,),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03),
              child: Text("SELECTED FOR YOU", style: alreadyMemberStyle),
            ),
            Container(
                margin: EdgeInsets.only(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    top: MediaQuery.of(context).size.height * 0.02),
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.white, width: 1),
                    //  borderRadius: BorderRadius.circular(20.0),
                    shape: BoxShape.rectangle,
                    boxShadow: boxShadow),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.9,
                    //  height: 400,

                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.transparent,
                              child:
                              AppUtility().loadImage(membershipImageUrl)
                          ),
                        ])))
          ],
        ));
  }
}