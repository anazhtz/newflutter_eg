import 'package:flutter/material.dart';

class Customelistview extends StatelessWidget{
  var name = ["Anaz", "Rashad", "Rahul", "Safuwan"];
  var icon=["AN","RA","RH","SF"];
  var phone = ["8136857569", "8136857569", "8136857569", "8136857569"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("List View"),),
     body: ListView.custom(childrenDelegate: SliverChildListDelegate(ListView())),
   );
  }
  
}