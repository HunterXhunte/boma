// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  final ImagePicker _picker = ImagePicker();

  File? _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage:
                          _image == null ? null : FileImage(_image!),
                    ),
                    InkWell(onTap: pickImage, child: Icon(Icons.camera_alt))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 50),
                  child: Text(
                    'Name',
                    style: TextStyle(color: Colors.black54, fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void pickImage() async {
    dynamic image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image.path);
    });
  }
}
