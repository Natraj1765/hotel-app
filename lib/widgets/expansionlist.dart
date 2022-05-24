import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/utils/carousel.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:jaz_app/utils/uiconstants.dart';

class Expansion extends StatefulWidget {
  var _caroselImagelist;
  var _expansionTitle;
  var _expansionDes;

  Expansion(this._caroselImagelist, this._expansionTitle, this._expansionDes);

  _ExpansionState createState() => _ExpansionState();
}

class _ExpansionState extends State<Expansion>
    with SingleTickerProviderStateMixin {
  late Animation<double> _iconTurns;
  late AnimationController controller;
  late CurvedAnimation _easeInAnimation;
  List images = [];
  bool descTextShowFlag = false;

  void initState() {
    super.initState();
    images = [];
    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);

    _easeInAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
      reverseCurve: Curves.easeOut,
    );
    images.add(widget._caroselImagelist);
    _iconTurns =
        new Tween<double>(begin: 0.0, end: 0.0).animate(_easeInAnimation);
  }

  @override
  Widget build(BuildContext context) {
    //final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
    return Container(
      // height: MediaQuery.of(context).size.height/2,
      //  height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.white, width: 1),
        //  borderRadius: BorderRadius.circular(containerBorderRadius),
        boxShadow: boxShadow,
        shape: BoxShape.rectangle,
      ),
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.015,
          left: MediaQuery.of(context).size.width * 0.005,
          right: MediaQuery.of(context).size.width * 0.005),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        // baseColor: Colors.white,
        // expandedColor: Colors.white,
        // collapsedBackgroundColor: Colors.white,
        // backgroundColor: Colors.white,
        // initiallyExpanded:true,
        collapsedIconColor: Uicolors.buttonbg,
        iconColor: Uicolors.buttonbg,
        //key: cardA,
        title: Text(widget._expansionTitle, style: expansionTitleStyle),
        // trailing: Icon(Icons.chevron_left) ?? new RotationTransition(
        //   turns: _iconTurns,
        //   child: const Icon(Icons.keyboard_arrow_down),
        // ),
        // trailing:  Icon(
        //   Icons.keyboard_arrow_down,
        //   color: Colors.green,
        // ),
        children: <Widget>[
          if (widget._expansionDes != "")
            Container(
              // height: MediaQuery.of(context).size.height/2,
              // height: 400,
              margin: AppUtility().isTablet(context)
                  ? EdgeInsets.all(0)
                  : EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                //    border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(containerBorderRadius),
                shape: BoxShape.rectangle,
              ),
              child: AppUtility().isTablet(context)
                  ? Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10, top: 11),
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.27,
                            child: imageWidget(),
                          ),
                          Expanded(
                              child: Container(
                                  alignment: Alignment.topLeft,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: descriptionWidget()))
                        ],
                      ))
                  : Column(
                      children: <Widget>[
                        Container(
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.35,
                              //  width: MediaQuery.of(context).size.width * 0.85,
                              child: imageWidget()),
                        ),
                        if (widget._expansionDes != "")
                          Container(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.025,
                                  top: MediaQuery.of(context).size.height *
                                      0.025,
                                  right: MediaQuery.of(context).size.width *
                                      0.025),
                              child: descriptionWidget()
                              // Text(widget._expansionDes, style: descTextStyle),
                              ),
                      ],
                    ),
            )
        ],
      ),
    );
  }

  imageWidget() {
    return Stack(
      children: [
        ClipRRect(
          // borderRadius:
          //     BorderRadius.all(Radius.circular(containerBorderRadius)),
          child: Carousel(
            images: images
                .map(
                  (e) =>
        AppUtility().loadNetworkImage(e.toString())).toList(),
            indicatorSize: const Size.square(0.0),
            indicatorActiveSize: const Size(0.0, 0.0),
            indicatorColor: Colors.grey,
            indicatorActiveColor: Colors.white,
            // animationCurve: Curves.easeIn,
            contentMode: BoxFit.cover,
            autoPlay: false,
            indicatorBackgroundColor: Colors.transparent,
            bottomPadding: 20,
          ),
        ),
      ],
    );
  }

  descriptionWidget() {
    return Column(
      children: [
        Html(
          data: widget._expansionDes,
          shrinkWrap: true,
          style: {
            "h1": h1Style,
            "p": paraStyle,
            "li": listStyle,
            'html': AppUtility().isTablet(context)
                ? Style(
                    textAlign: TextAlign.justify,
                    maxLines: descTextShowFlag ? 200 : 2)
                : Style(textAlign: TextAlign.justify),
          },
        ),
        widget._expansionDes.length > 200 && AppUtility().isTablet(context)
            ? Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: 10,
                  /*bottom: (widget._expansionDes.length) > 100
                                  ? MediaQuery.of(context).size.height * 0.01
                                  : 0*/
                ),
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
                ))
            : Container(),
      ],
    );
  }
}
