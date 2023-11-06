import 'package:flutter/material.dart';
import 'package:newflutter_eg/customwidget.dart';
import 'CustomeListView.dart';

void main(){
  runApp(MaterialApp(home: Callcustomwidgt(),));
}
class Callcustomwidgt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Container(
    child: Customwidgetss(
      onpress: (){

      },
      img: Image(image: AssetImage("assets/Argentina, campeón del mundo_ así fue el camino al título.jpeg")),
      name: Text("Anaz"),
      bgcolors: Colors.blueGrey,
    ),
  ),
    );
  }
}