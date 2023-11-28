import 'package:flutter/material.dart';
import 'package:newflutter_eg/PassingDataBw2screen/Dummydata.dart';

class Productlistt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id= ModalRoute.of(context)?.settings.arguments;
    final product = dummydata.firstWhere((product) => product["id"]==id);
  return Scaffold(backgroundColor: Colors.blueGrey,
    appBar: AppBar(backgroundColor: Colors.teal,
      title: Text("Okay bye"),
    ),
    body: Container(
      child: Padding(padding: EdgeInsets.all(25),
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.network(product["image"])),
            Text("${product["name"]}",
            style: TextStyle(fontSize: 30.0),
            ),
            Text("${product["description"]}",
             // style: TextStyle(fontSize: 30.0),),

            )],
        ),
      ),
    ),
  );
  }

}