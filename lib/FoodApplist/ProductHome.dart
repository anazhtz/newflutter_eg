import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Foodproductlist.dart';


class Productlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id= ModalRoute.of(context)?.settings.arguments;
    final product = Fudlist.firstWhere((product) => product["id"]==id);
    return Scaffold(backgroundColor: Colors.blueGrey,
      appBar: AppBar(backgroundColor: Colors.yellow[700],
        title: Text("Select"),
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
              Text("${product["price"]}"),
              Text("${product["description"]}",
                // style: TextStyle(fontSize: 30.0),),
              ),
            ],
          ),
        ),
      ),
    );
  }

}