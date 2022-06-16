// ignore_for_file: camel_case_types, prefer_const_constructors

import 'dart:async';

import 'package:boma/screen/screenHome.dart';
import 'package:boma/screen/welcomScreen.dart';
import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  static const String screens = 'screen';
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), navigateToScreen1);
  }

  void navigateToScreen1() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/1.png'),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 50),
              child: Text(
                'Boma',
                style: TextStyle(color: Colors.black54, fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
