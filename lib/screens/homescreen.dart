import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jaz_app/screens/account.dart';
import 'package:jaz_app/screens/onboarding/signin.dart';
import 'package:jaz_app/screens/search/search.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


class HomeScreen extends StatefulWidget
{
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{

  /*PersistentTabController _controller;
  bool _hideNavBar;*/

  @override
  void initState() {
    super.initState();
    /*_controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          GestureDetector(
            onTap: ()
            {
              FirebaseAuth.instance.signOut();
              pushNewScreen(
                context,
                screen: Account("bottom"),
                withNavBar:
                true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation:
                PageTransitionAnimation.cupertino,
              );
            },
            child: Container(
              alignment: Alignment.centerRight,
              padding:  EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.width *0.04, 0),
              child: Text('Logout',style: TextStyle(color: Uicolors.buttonbg, fontSize: 15,fontFamily: 'Popins'),),
              //child: Icon(Icons.lock_outlined,color: Colors.grey,),
            ),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
           Container(
            alignment: Alignment.center,
            child: Text(" Coming soon",style: TextStyle(
                color: Uicolors.buttonbg, fontSize: 25,fontFamily: 'Popins'
            ),),
          ),
        ],
      ),
    );
  }
}