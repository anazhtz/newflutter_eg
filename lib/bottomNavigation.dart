import 'package:flutter/material.dart';

import 'WHATSAPP/Callscreen.dart';
import 'WHATSAPP/Camerascreen.dart';
import 'WHATSAPP/Statusscreen.dart';
import 'WHATSAPP/chatlistwt.dart';

void main(){
  runApp(MaterialApp(home: Bottomnav(),));
}

class Bottomnav extends StatefulWidget{
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  var screen=[
    Chatlist(),
    Statusscreen(),
    Callscreen(),
  //  Camerascreen(),
  ];
  int index=1;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey,
         type: BottomNavigationBarType.shifting,
         selectedItemColor: Colors.black  ,unselectedItemColor: Colors.red,
         currentIndex: index,
         onTap: (tapinx){
       setState(() {
         index=tapinx;
       });
         },
         items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Like"),
       BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account"),
       BottomNavigationBarItem(icon: Icon(Icons.logout),label: "Logout"),
     ]) ,
     body: screen[index],

   );
  }
}