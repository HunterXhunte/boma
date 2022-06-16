// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:boma/screen/registerationScreen.dart';
import 'package:boma/screen/signinScreen.dart';
import 'package:flutter/material.dart';

import '../widgets/mybutten.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcomeScreen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    child: Image.asset('images/1.png'),
                  ),
                  Text(
                    "Boma",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 1, 21, 38)),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              MyBoutten(
                color: Colors.blue[900]!,
                title: 'Sign in',
                onpressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SigninScreen())));
                },
              ),
              MyBoutten(
                color: Colors.blue[700]!,
                title: 'register',
                onpressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => registerationScteer())));
                },
              )
            ]),
      ),
    );
  }
}
