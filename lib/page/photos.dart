// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class photos extends StatelessWidget {
  const photos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        'photo',
        style: TextStyle(fontSize: 60, color: Colors.black45),
      )),
    );
  }
}
