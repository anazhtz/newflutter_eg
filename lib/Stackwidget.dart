import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Stackeg(),
      )
  )
  );
}

class Stackeg extends StatefulWidget{
  @override
  State<Stackeg> createState() => _StackegState();
}

class _StackegState extends State<Stackeg> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Stack(
    children: [
      Center(child: Container(color: Colors.red,height: 350,width: 350,)),
      Positioned(child: Container(color: Colors.green,height: 100,width: 100,),top: 300,left: 50,),
      Positioned(child: Container(color: Colors.yellow,height: 100,width: 100,),top: 300,right: 50,),
      Positioned(child: Container(color: Colors.yellow,height: 20,width: 180,),top: 500,right: 90,),
    ],
  ),
);
  }
}