import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:newflutter_eg/FoodApplist/Foodproductlist.dart';
import 'ProductHome.dart';
import 'Splashscren.dart';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Splashscrn(),
        routes: {

          'secondpagee':(context)=>Productlist(),
        },
      )
  )
  );
}

class Fudhome extends StatefulWidget{
  @override
  State<Fudhome> createState() => _FudhomeState();
}

class _FudhomeState extends State<Fudhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow[700],
        title: Center(child: Text("What you want to eat ?",style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.black),)),
      ),
      body: GridView.count(crossAxisCount: 3,
        children: Fudlist.map((product) => Card(color: Colors.teal,
          child: TextButton(onPressed: ()=>gotoNext(context, product["id"]),
              child: Text("${product["name"]}",
                style: TextStyle(fontSize: 20,color: Colors.black),
              )),
        )).toList(),
        ),
    );
  }
}
void gotoNext(BuildContext context,product){
  Navigator.of(context).pushNamed("secondpagee",arguments: product);
}