import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaz_app/helper/utils.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _CustomAppBarState();
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}

class _CustomAppBarState extends State<CustomAppBar>
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight:
          AppUtility().isTablet(context) ? 80 : AppBar().preferredSize.height,
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Container(
    //    alignment: Alignment.centerLeft,
      //  child: Row(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
       //   children: [
            child:Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height * 0.015),
                child: Image.asset(
                  "assets/images/JHG_logo.png",
                  width: AppUtility().isTablet(context) ? 180 : 120,
                ),
              ),
            ),
            // Align(
            //     alignment: Alignment.centerRight,
            //     child: GestureDetector(
            //         onTap: () {},
            //         child: Padding(
            //           padding: EdgeInsets.only(
            //               left: imageLeftPadding, top: imageTopPadding),
            //           child: Image.asset(
            //             "assets/images/menu_icon.png",
            //             width: 50,
            //             color: Uicolors.desText,
            //           ),
            //         ))),
      //    ],
       // ),
      ),
    );
  }

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    throw UnimplementedError();
  }

  @override
  // TODO: implement key
  Key? get key => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  String toStringDeep(
      {String prefixLineOne = '',
      String? prefixOtherLines,
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringDeep
    throw UnimplementedError();
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringShallow
    throw UnimplementedError();
  }
}
