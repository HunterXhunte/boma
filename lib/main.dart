// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:boma/page/homepage.dart';
import 'package:boma/screen/ChatScreen.dart';
import 'package:boma/screen/registerationScreen.dart';
import 'package:boma/screen/screen.dart';
import 'package:boma/screen/signinScreen.dart';
import 'package:boma/screen/welcomScreen.dart';
import 'package:boma/test.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './screen/screenHome.dart';
import './test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: screen.screens,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        SigninScreen.singinscreen: (context) => SigninScreen(),
        registerationScteer.regisetscreen: (context) => registerationScteer(),
        ChatScreen.chatscreen: (context) => ChatScreen(),
        screenHome.screen: (context) => screenHome(),
        screen.screens: (context) => screen(),
        Homepage.screens: (context) => Homepage(),
        MyHomePage.screens: (context) => MyHomePage(),
      },
    );
  }
}
