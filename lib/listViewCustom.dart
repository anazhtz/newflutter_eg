import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
    home: Listviewcustom(),
  )));
}

class Listviewcustom extends StatelessWidget{
  var name = ["Anaz", "Rashad", "Rahul", "Safuwan"];
  var icon=["AN","RA","RH","SF"];
  var phone = ["8136857569", "8136857569", "8136857569", "8136857569"];
  @override
  Widget build(BuildContext context) {                                 //safeArea "ui fit
   return Scaffold(
     appBar: AppBar(title: Text("List View Custom",style: TextStyle(color: Colors.black),),),
     body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
         (context,index){
           return Card(
             child:ListTile(
               leading:CircleAvatar(child: Text(icon[index]),),
               title: Text(name[index]),

             ) ,
           );

         },childCount: name.length,
     )
     )

   );
  }

}