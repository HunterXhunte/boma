// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, camel_case_types, prefer_const_constructors, unused_import, unused_local_variable

import 'package:boma/page/states.dart';
import 'package:boma/screen/screenHome.dart';
import 'package:boma/screen/signinScreen.dart';
import 'package:boma/widgets/mybutten.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class registerationScteer extends StatefulWidget {
  static const String regisetscreen = 'regisetscreen';
  const registerationScteer({Key? key}) : super(key: key);

  @override
  State<registerationScteer> createState() => _registerationScteerState();
}

class _registerationScteerState extends State<registerationScteer> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              child: Image.asset('images/1.png'),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter your Email',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter your password',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MyBoutten(
                color: Colors.blue[800]!,
                title: 'register',
                onpressed: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SigninScreen())));
                  } catch (e) {
                    print(e);
                  }
                }),
          ],
        ),
      ),
    );
  }
}
