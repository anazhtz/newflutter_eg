import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main(){
  runApp(MaterialApp(home: Dailogbox()));
}

class Dailogbox extends StatefulWidget{
  @override
  State<Dailogbox> createState() => _DailogboxState();
}

class _DailogboxState extends State<Dailogbox> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: ElevatedButton(onPressed: (){
         Alert(
           context: context,
           type: AlertType.warning,
           title: "RFLUTTER ALERT",
           desc: "Flutter is more awesome with RFlutter Alert.",
           buttons: [
             DialogButton(
               child: Text(
                 "FLAT",
                 style: TextStyle(color: Colors.white, fontSize: 20),
               ),
               onPressed: () => Navigator.pop(context),
               color: Color.fromRGBO(0, 179, 134, 1.0),
             ),
             DialogButton(
               child: Text(
                 "GRADIENT",
                 style: TextStyle(color: Colors.white, fontSize: 20),
               ),
               onPressed: () => Navigator.pop(context),
               gradient: LinearGradient(colors: [
                 Color.fromRGBO(116, 116, 191, 1.0),
                 Color.fromRGBO(52, 138, 199, 1.0)
               ]),
             )
           ],
         ).show();
       }, child: Text("Just Click")),
     ),



   );
  }
}