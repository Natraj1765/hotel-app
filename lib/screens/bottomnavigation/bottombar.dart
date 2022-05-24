import 'dart:collection';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:jaz_app/helper/utils.dart';
import 'package:jaz_app/screens/account.dart';
import 'package:jaz_app/screens/booking.dart';
import 'package:jaz_app/screens/product_overview/surroundings.dart';
import 'package:jaz_app/screens/search/collapse.dart';
import 'package:jaz_app/screens/search/daterangepage.dart';
import 'package:jaz_app/screens/search/search.dart';
import 'package:jaz_app/screens/search/search_filter.dart';
import 'package:jaz_app/screens/search/search_sort.dart';
import 'package:jaz_app/utils/fontText.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import '../destination/destinations.dart';
import 'package:jaz_app/utils/FontSize.dart' as fontSize;

class BottomBar extends StatefulWidget {
  _BottomBarPage createState() => _BottomBarPage();
}

// declare the bottombar

class _BottomBarPage extends State<BottomBar> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  late Function hp;


  void initState() {
    super.initState();
  }



  //var index;
  Widget build(BuildContext context) {
    // _controller.index = GlobalState.tabindex;
    hp = Screen(MediaQuery.of(context).size,MediaQuery.of(context).orientation).hp;

    return PersistentTabView.custom(
      context,
      controller: _controller,
      screens: _allScreens(),
      itemCount: _navBarsItems().length,
      // items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      customWidget: CustomNavBarWidget(
        // Your custom widget goes here
        items: _navBarsItems(),
        selectedIndex: _controller.index,
        onItemSelected: (index) {
          setState(() {
            _controller.index = index;
            _buildScreens(index: index);
            // if(index == 3){
            //   pushNewScreen(context, screen: Account(),withNavBar: true);
            // }
          });
        },
      ), // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      /*decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),*/
      // popAllScreensOnTapOfSelectedTab: true,
      // popActionScreens: PopActionScreensType.all,
      //  itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
      //    duration: Duration(milliseconds: 100),
      //    curve: Curves.ease,
      //  ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 100),
      ),
      //navBarStyle: NavBarStyle.style8, // Choose the nav bar style with this property.
    );
  }

  _buildScreens({index}) {
    return _allScreens()[index];
  }

  List<Widget> _allScreens() {
    List<Widget> widget = [
      //  Search([TravellerFilterInput(age:25,refId: 1)],"1 Person - 1 Rooms"),
      /*Search(),
      //SearchDetail("","",),
     // collapse(),
      Booking(),*/
      Destination(),
      Account("bottom")
    ];
    return widget;
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        title: (Strings.search),
        icon: Image.asset("assets/images/active_search.png",
            height:  100, width: 100,),
        inactiveIcon: Image.asset('assets/images/search.png',
            height: 100, width: 100),
        activeColorPrimary: Uicolors.buttonbg,
        inactiveColorPrimary: Uicolors.bottomTextColor,
      ),
      PersistentBottomNavBarItem(
        title: (Strings.offers),
        icon: Image.asset('assets/images/offer-active.png',
            height: 23, width: 23,),
        inactiveIcon: Image.asset('assets/images/offer.png',
            height: 23, width: 23,),
        activeColorPrimary: Uicolors.buttonbg,
        inactiveColorPrimary: Uicolors.bottomTextColor,
      ),
      // PersistentBottomNavBarItem(
      //   title: (Strings.booking),
      //   icon: Image.asset('assets/images/booking_active.png',
      //       height: 25, width: 25,),
      //   inactiveIcon: Image.asset('assets/images/booking.png',
      //       height: 25, width: 25, ),
      //   activeColorPrimary: Uicolors.buttonbg,
      //   inactiveColorPrimary: Uicolors.bottomTextColor,
      // ),
      PersistentBottomNavBarItem(
        title: (Strings.destinations),
        icon: Image.asset('assets/images/destination_active.png',
            height: 23, width: 23),
        inactiveIcon: Image.asset('assets/images/destination.png',
            height: 23, width: 23),
        activeColorPrimary: Uicolors.buttonbg,
        inactiveColorPrimary: Uicolors.bottomTextColor,
      ),
      PersistentBottomNavBarItem(
        title: (Strings.account),
        icon: Image.asset('assets/images/account_active.png',
            height: 23, width: 23 ),
        inactiveIcon: Image.asset('assets/images/account_inactive.png',
            height: 23, width: 23),
        activeColorPrimary: Uicolors.buttonbg,
        inactiveColorPrimary: Uicolors.bottomTextColor,
      ),
    ];
  }
}

class CustomNavBarWidget extends StatelessWidget {
  int selectedIndex;
  List<PersistentBottomNavBarItem> items;
  ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    // required Key key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected, BuildContext context) {
    return SizedBox(
      // alignment: Alignment.center,
      height: 100,//kBottomNavigationBarHeight,
      // color: isSelected?Colors.white:Uicolors.backBorderColor,
      child: Container(
        color: isSelected?Colors.white:Uicolors.backBorderColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: IconTheme(
                data: IconThemeData(
                    size: 50,//iconSize,
                    color: isSelected
                        ? (item.activeColorSecondary == null
                        ? item.activeColorPrimary
                        : item.activeColorSecondary)
                        : item.inactiveColorPrimary == null
                        ? item.activeColorPrimary
                        : item.inactiveColorPrimary),
                child: isSelected ? item.icon : item.inactiveIcon ?? item.icon,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Material(
                type: MaterialType.transparency,
                child: FittedBox(
                    child: Text(
                      item.title as String,
                      style: TextStyle(
                          color: isSelected
                              ? (item.activeColorSecondary == null
                              ? item.activeColorPrimary
                              : item.activeColorSecondary)
                              : item.inactiveColorPrimary,
                          fontSize: AppUtility().isTablet(context)?20:hp(fontSize.FontSize.size13), fontFamily: 'Popins-regular'),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            int index = items.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  this.onItemSelected(index);
                },
                child: _buildItem(item, selectedIndex == index,context),
              ),
            );
          }).toList(),
        ),
      )
    );
  }
}
