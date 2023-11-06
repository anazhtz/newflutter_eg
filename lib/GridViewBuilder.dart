import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridbuilder(),));
}

class Gridbuilder extends StatelessWidget{
  var name = ["Anaz", "Rashad", "Rahul", "Safuwan","manu","saalu","silu"];
  var image = ["assets/facebook.png",
    "assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png"
  ];
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 400),//SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index){
    return Card(
      child: Column(
        children: [
          Expanded
            (child: Image(image: AssetImage(image[index]),)),
          Row(
            children: [
              Text(name[index]),
            ],
          ),SizedBox(width: 100,),
        ],
      ),
    );
  }),
);
  }

}