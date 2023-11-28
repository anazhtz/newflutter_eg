import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Alertbox(),));
}
class Alertbox extends StatefulWidget{
  @override
  State<Alertbox> createState() => _AlertboxState();
}

class _AlertboxState extends State<Alertbox> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.teal,
     body: Center(
       child: ElevatedButton(onPressed: (){
         showDialog(context: context, builder: (context){
           return AlertDialog(backgroundColor: Colors.purple,
             title: Text("Exit..."),
             content: Text("Do you want exit from the app"),
             actions: [
               TextButton(onPressed: (){
                 Navigator.of(context).pop();
               }, child: Text("Yes")),
             TextButton(onPressed: (){
               Navigator.of(context).pop();
             } , child: Text("No")),
               TextButton(onPressed: (){
                 Navigator.of(context).pop();
               }, child: Text("Cancel"),),
             ],
           );
         });

       }, child: Text("Click")),
     ),



   );
  }
}