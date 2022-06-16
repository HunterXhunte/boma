// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../page/states.dart';
import '../page/Profilepage.dart';
import '../page/photos.dart';
import '../page/Chat.dart';
import '../page/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class screenHome extends StatefulWidget {
  static const String screen = 'Screenhome';
  const screenHome({Key? key}) : super(key: key);

  @override
  State<screenHome> createState() => _screenHomeState();
}

class _screenHomeState extends State<screenHome> {
  final _auth = FirebaseAuth.instance;
  late User signedInUser;
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  final navigatoinkey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;
  final screens = [
    photos(),
    states(),
    Homepage(),
    Chat(),
    Profilepage(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.photo_library_outlined,
        size: 30,
      ),
      Icon(
        Icons.play_circle_outline,
        size: 30,
        color: Colors.blue[900],
      ),
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.question_answer_outlined,
        size: 30,
        color: Colors.grey[700],
      ),
      Icon(
        Icons.account_circle_outlined,
        size: 30,
        color: Colors.white,
      ),
    ];
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Boma"),
          elevation: 0,
          centerTitle: true,
        ),
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          key: navigatoinkey,
          color: Colors.blue,
          buttonBackgroundColor: Colors.blue[300],
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
