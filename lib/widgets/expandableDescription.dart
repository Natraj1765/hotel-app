import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaz_app/helper/graphqlconnectivity/constants.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/strings.dart';

class ExpandableDescription extends StatefulWidget {
  final String description;
  ExpandableDescription({required this.description});

@override
_ExpandableDescriptionState createState() => _ExpandableDescriptionState();
}

class _ExpandableDescriptionState extends State<ExpandableDescription> {
 bool descTextShowFlag = false;
 var roomDesc ="";
 @override
 void initState() {
   super.initState();
   roomDesc = widget.description;
 }

  @override
  Widget build(BuildContext context) {
    final double overAllHeight = MediaQuery.of(context).size.height;
    final double overAllWidth = MediaQuery.of(context).size.width;
    var topHeight = MediaQuery.of(context).size.height * 0.015;
    var distanceLeftPadding = overAllWidth * 0.04;
    var bottonBottomPadding = overAllHeight * 0.006;
    var leftPadding = overAllWidth * 0.055;
    return Container(
      child: Column(
        children: [
          Container(
              child: Text(
                AppUtility().parseHtmlString(roomDesc).replaceAll("\n", ""), style: descTextStyle,
                softWrap:true,
                maxLines: descTextShowFlag?100:2,
              ),
              padding: EdgeInsets.only(
                  top: topHeight,
                  left: distanceLeftPadding,
                  right: distanceLeftPadding,
                  bottom: bottonBottomPadding)),
          if ((roomDesc.length) < 100)
            Container(
                padding: EdgeInsets.only(
                  left: leftPadding,
                  bottom: (MediaQuery.of(context).size.height * 0.01),
                )),
          if ((roomDesc.length) > 100)
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                    left: distanceLeftPadding,bottom: topHeight),
                child: GestureDetector(
                  onTap: () {
                    // _showAmenities(context);
                    setState(() {
                      descTextShowFlag = !descTextShowFlag;
                    });
                  },
                  child: descTextShowFlag
                      ? Text(
                    Strings.viewLess,
                    style: viewMore,
                  )
                      : Text(
                    Strings.viewMore,
                    style: viewMore,
                  ),
                )),
        ],
      ),
    );
  }
}
