import 'package:flutter/material.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/utils/GlobalStates.dart';
import 'package:jaz_app/utils/carousel.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:jaz_app/utils/uiconstants.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  List _imageList = [];

  @override
  void initState() {
    super.initState();

    if (GlobalState.imageList != null && GlobalState.imageList.isNotEmpty) {
      GlobalState.imageList.forEach((element) {
        _imageList.add(element);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var indicatorSize = AppUtility().indicaorSize(context);
    var currentIndicatorSize = AppUtility().currentIndicatorSize(context);
    final double overAllHeight = MediaQuery.of(context).size.height;
    final double overAllWidth = MediaQuery.of(context).size.width;
    var backTopSpace = overAllHeight * 0.0;
    var iconLeftPading = overAllWidth * 0.005;
    var leftPadding = overAllWidth * 0.033;
    var backImageheight = overAllHeight * 0.45;
    var viewStartHeight = overAllHeight * 0.36;
    var contentLeftPadding = overAllWidth * 0.025;
    var nameTopPadding = overAllHeight * 0.020;

    var buttonWidth = overAllWidth * 0.6;
    var buttonHeight = overAllHeight * 0.055;
    var textfieldTopPadding = overAllHeight * 0.025;
    var buttontopPadding = overAllHeight * 0.2;

    return Scaffold(
      backgroundColor: Uicolors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: iconLeftPading),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Uicolors.backText,
                        size: backIconSize,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, top: 0),
                      child: Text(Strings.back, style: backStyle),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                    margin: EdgeInsets.only(
                        right: iconLeftPading, top: backTopSpace),
                    child: Text(
                      GlobalState.aboutUsContentHeadLine != null
                          ? GlobalState.aboutUsContentHeadLine
                          : Strings.jazHotelGroup,
                      style: welcomJazStyle,
                    )),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: new Stack(
          children: <Widget>[
            Container(
              height: backImageheight,
              width: overAllWidth,
              child: Center(
                child: Carousel(
                  //   images:images,
                  images:_imageList.map((e) =>
                      AppUtility().loadNetworkImage(e.toString())
                  ).toList(),
                  //  images: images,
                  indicatorSize: Size.square(indicatorSize),
                  indicatorActiveSize:
                  Size(currentIndicatorSize, indicatorSize),
                  indicatorColor: Colors.grey,
                  indicatorActiveColor: Colors.white,
                  animationCurve: Curves.easeIn,
                  contentMode: BoxFit.cover,
                  autoPlay: false,
                  indicatorBackgroundColor: Colors.transparent,
                  bottomPadding: backImageheight / 4,
                ),
              ),
            ),
            Positioned(
              top: overAllHeight * 0.29,

              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                    left: contentLeftPadding,
                    right: contentLeftPadding,
                    top: nameTopPadding),
                child: Text(
                    GlobalState.aboutsHeadLine != null
                        ? GlobalState.aboutsHeadLine
                        : "",
                    style: aboutUsHeaderContent),
              ),
            ),
            new Column(
              children: [
                Container(
                  // height: MediaQuery.of(context).size.height/2,
                  //  height: 400,
                  padding: EdgeInsets.only(
                    left: contentLeftPadding,
                    right: contentLeftPadding,
                    bottom: nameTopPadding
                  ),
                  margin: EdgeInsets.only(
                      top: viewStartHeight,
                      left: leftPadding,
                      right: leftPadding),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(containerBorderRadius),
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(
                            left: contentLeftPadding,
                            right: contentLeftPadding,
                            top: nameTopPadding),
                        child: Text(Strings.aboutUs, style: aboutUsTextStyle),
                      ),
/*
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(
                            left: contentLeftPadding,
                            right: contentLeftPadding,
                            top: nameTopPadding),
                        child: Text(
                            GlobalState.aboutUsContentHeadLine != null
                                ? GlobalState.aboutUsContentHeadLine
                                : "",
                            style: aboutUsContentHeaderStyle),
                      ),
*/
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(
                            left: contentLeftPadding,
                            right: contentLeftPadding,
                            top: nameTopPadding),
                        child: Image.asset(
                            "assets/images/JHG_logo.png",width: 150
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(
                              left: contentLeftPadding,
                              right: contentLeftPadding,
                              top: nameTopPadding,
                              bottom: nameTopPadding),
                          child: Text(
                            GlobalState.aboutUsContent != null
                                ? GlobalState.aboutUsContent
                                : "",
                            style: descTextStyle,
                          )),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _image(String asset) {
    return Image.asset(
      asset,
      height: 0.5,
      width: 0.5,
      // color: Colors.amber,
    );
  }
}
