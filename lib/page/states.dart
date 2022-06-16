// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class states extends StatelessWidget {
  const states({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        'state',
        style: TextStyle(fontSize: 60, color: Colors.black45),
      )),
    );
  }
}
