import 'dart:async';
import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutter_eg/newloginpage.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
      home: Facebook(),
      )
      ));

}
class Facebook extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>fbstate();

  }
class fbstate extends State<Facebook>{
  @override
  void initState() {
   Timer(const Duration(seconds: 4), () {
     Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=>Newlogin()));
   });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(color: Colors.white),
child: const Padding(padding: EdgeInsets.only(top: 250,right: 50,left: 50),
child: Center(
  child: Column(
    children: [
      Image(image: AssetImage("assets/fb.png"),height: 100 ,width: 100,),
    ],
  ),

),

),
      ),
    );

  }






}