import 'package:flutter/material.dart';
import 'chat.dart';

  class Chatlist extends StatefulWidget{
  @override
  State<Chatlist> createState() => _ChatlistState();
}

class _ChatlistState extends State<Chatlist> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:   SliverList(delegate: SliverChildListDelegate(
         [
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),
           ListTile(
             leading: Icon(Icons.contact_phone),
             title: Text("Anaz"),
             subtitle: Text("8136857569"),
           ),

         ]
     )),
   );
  }
}