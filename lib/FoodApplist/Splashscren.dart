import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Loginpage.dart';



class Splashscrn extends StatefulWidget{
  @override
  State<Splashscrn> createState() => _SplashscrnState();
}
class _SplashscrnState extends State<Splashscrn> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=>Fudlogin()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
 return Scaffold(backgroundColor: Colors.teal,
   body: Container(
   decoration: BoxDecoration(color: Colors.white),
   child: const Padding(
     padding: EdgeInsets.only(top: 250, right: 50, left: 50),
     child: Center(
       child: Column(
         children: [
           Image(
             image: AssetImage("assets/Icons8-Ios7-Food-Cutlery.512 (1).png"),
             height: 100,
             width: 100,
           ),
           SizedBox(
             height: 10,
           ),
           Text(
             "Tapioca",
             style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
                 fontSize: 35),
           ),
           SizedBox(
             height: 270,
           ),
           //Text("From"),
           // Image(
           //   image: AssetImage("assets/meta.png"),
           //   height: 50,
           //   width: 30,
           // ),
         ],
       ),
     ),
   ),
 ),
    );
  }
}