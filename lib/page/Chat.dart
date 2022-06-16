// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) => Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("chat"),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/1.png'),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
