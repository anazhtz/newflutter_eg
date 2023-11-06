
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Expand(),));
}

class Expand extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Container(color: Colors.red,height: 100,),
         Expanded(child: Container(color: Colors.blueGrey,height: 50,)),
         Expanded(child: Container(color: Colors.green,height: 80,)),
       ],
     ),
   );
  }

}