// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:io';

import 'package:boma/widgets/mybutten.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Homepage extends StatefulWidget {
  static const String screens = 'homepage';
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ImagePicker _picker = ImagePicker();
  late File _image;
  TextEditingController textController = TextEditingController();
  void post() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: pickImage,
                  child: Icon(
                    Icons.photo,
                    size: 60,
                  ),
                ),
                MyBoutten(
                  color: Colors.blue,
                  title: 'بم تفكر ',
                  onpressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void pickImage() async {
    dynamic image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }
}
