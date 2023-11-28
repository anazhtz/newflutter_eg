import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Netflisloginepage.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context) =>
  MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
  home: Myapp(),
  )
  ));
}

class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyappState();
}

class MyappState extends State<Myapp> {
  @override
  void initState(){
    Timer(const Duration(seconds: 5), () {           //screen stand time
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));      //screen to screen change
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( decoration: BoxDecoration(gradient: LinearGradient(    //backgrnd photo and multiple color akkaan..also single color
        //begin: Alignment.topCenter,     //colors nde alignment ready akkaan
        //end: Alignment.centerLeft,
        colors: [ Colors.black,Colors.red.shade900]
      )),                                         //color: Colors.black,   //background color change cheyyaan
      child: const Padding(
        padding: EdgeInsets.only(top: 250,right: 50,left: 50),
        child: Center(
          child: Column(
            children: [
            Image(image: AssetImage("assets/Alecive-Flatwoken-Apps-Netflix.512.png"),height: 180,width: 180,),
              Text(
                "Enjoy Your Time Here",
                style: TextStyle(
                  fontSize: 30,color: Colors.red,fontStyle: FontStyle.italic,fontWeight: FontWeight.w700,
                )
              )
            ],
          )
        )
      )

      ),

    );
  }
}