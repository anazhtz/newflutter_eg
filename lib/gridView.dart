import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Gridvieww(),
      )
  ));

}

class Gridvieww extends StatelessWidget {
  var name = ["Anaz", "Rashad", "Rahul", "Safuwan","manu","saalu","silu"];
  var image = ["assets/facebook.png",
    "assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
        children: List.generate(7, (index) {
          return Card(
            child: Column(
              children: [
                Image(image: AssetImage(image[index]),),
                Row(
                  children: [
                    Text(name[index]),
                    SizedBox(width: 30,),
                  ],
                ),
              ],
            ),
          );
        },
          // Card(
          //   child: Image(image: AssetImage("assets/Papirus-Team-Papirus-Apps-Netflix.512.png"),),
          // ),
          // Card(
          //   child: Image(image: AssetImage("assets/Papirus-Team-Papirus-Apps-Netflix.512.png"),),
          // ),
          // Card(
          //   child: Image(image: AssetImage("assets/Papirus-Team-Papirus-Apps-Netflix.512.png"),),
          // ),
          // Card(
          //   child: Image(image: AssetImage("assets/Papirus-Team-Papirus-Apps-Netflix.512.png"),),
          // ),
          // Card(
          //   child: Image(image: AssetImage("assets/Papirus-Team-Papirus-Apps-Netflix.512.png"),),
          // ),
        ),
      ),
    );
  }
}