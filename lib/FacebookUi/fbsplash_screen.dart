import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:newflutter_eg/FacebookUi/Facebookloginepage.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: Splshh(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Splshh extends StatefulWidget {
  @override
  State<Splshh> createState() => _SplshhState();
}

class _SplshhState extends State<Splshh> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Newlogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: const Padding(
          padding: EdgeInsets.only(top: 250, right: 50, left: 50),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/fb.png"),
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Facebook",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 270,
                ),
                Text("From"),
                Image(
                  image: AssetImage("assets/meta.png"),
                  height: 50,
                  width: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
