import 'package:flutter/material.dart';

class Customwidgetss extends StatelessWidget{
final  Text ?name;
final  Color ?bgcolors;
final  Image ?img;
final  VoidCallback ? onpress;
Customwidgetss({this.name, this.bgcolors, this.img,required this.onpress});
  //Customwidgetss(this.text, this.bgcolors,this.img,{required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: bgcolors,
        child: ListTile(
          leading: img,
          title: name,
        ),
      ) ,
    );
  }

}