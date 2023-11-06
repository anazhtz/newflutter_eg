import 'package:flutter/material.dart';

import 'Camerascreen.dart';
import 'chatlistwt.dart';

void main(){
  runApp(MaterialApp(home: Lunchescart(),));
}
class Lunchescart extends StatefulWidget{
  @override
  State<Lunchescart> createState() => _LunchescartState();
}

class _LunchescartState extends State<Lunchescart> {
  @override
  Widget build(BuildContext context) {
 return DefaultTabController(length: 2,
   child: Scaffold(
     appBar: AppBar(title: Text(""),
     bottom: TabBar(indicatorColor: Colors.white,labelPadding: EdgeInsets.only(left: 30),
       tabs: [
       Tab(child: Text("Lunches"),),
       Tab(child: Text("Cart"),),
     ],
     ),),
     body: TabBarView(                                //body tabbar view
         children: [

           Camerascreen(),
         ],
       ),
     ),
   );
  }
}