import 'package:flutter/material.dart';
import 'WHATSAPP/Callscreen.dart';
import 'WHATSAPP/Camerascreen.dart';
import 'WHATSAPP/Lunchescart.dart';
import 'WHATSAPP/Statusscreen.dart';
import 'WHATSAPP/chatlistwt.dart';

void main(){
  runApp(MaterialApp(home: Probottom(),));
}

class Probottom extends StatefulWidget{
  @override
  State<Probottom> createState() => _ProbottomState();
}

class _ProbottomState extends State<Probottom> {
  var screen=[
    Statusscreen(),
    Chatlist(),
    Callscreen(),
    Camerascreen(),
  ];

  int index=1;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.grey,
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
  BottomNavigationBarItem(icon: Icon(Icons.restaurant),label: "Lunches"),
  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
  BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Accounts"),
]),
     body:
     screen[index],

   );
  }
}