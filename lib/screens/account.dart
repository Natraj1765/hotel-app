import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaz_app/screens/onboarding/signin.dart';
import 'package:jaz_app/utils/GlobalStates.dart';
import 'package:jaz_app/utils/strings.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;


class Account extends StatefulWidget
{
  final String redirectName;
  Account(this.redirectName);
  _Account createState() => _Account();
}

class _Account extends State<Account>
{
  final FirebaseAuth auth = FirebaseAuth.instance;
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final User? user = auth.currentUser;
    return SignIn(widget.redirectName);
  }
}