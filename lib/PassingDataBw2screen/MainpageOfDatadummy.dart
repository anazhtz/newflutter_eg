import 'package:flutter/material.dart';
import 'package:newflutter_eg/PassingDataBw2screen/Dummydata.dart';
import 'Productlist.dart';

void main(){
  runApp(MaterialApp(home: Maindata(),
  routes: {
    'secondpage':(context)=>Productlistt(),
  },
  ));
}
class Maindata extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.teal,
       title: Text("What you want"),
     ),
     body: ListView(
       children: dummydata.map((product) => TextButton(onPressed: ()=>gotuNext(context, product["id"]),
           child: Text("${product["name"]}",
         style: TextStyle(fontSize: 20),
       ))).toList(),
     ),
   );
  }
}
void gotuNext(BuildContext context,product){
  Navigator.of(context).pushNamed("secondpage",arguments: product);
}