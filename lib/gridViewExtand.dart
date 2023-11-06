import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridviewextand(),));
}
class Gridviewextand extends StatelessWidget{
  var name = ["Anaz", "Rashad", "Rahul", "Safuwan","manu","saalu","silu"];
  var image = ["assets/facebook.png",
    "assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png"
  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 400,crossAxisSpacing: 14,mainAxisSpacing: 20),
    children:
      List.generate(7, (index) {
        return Card(
          child: Column(
            children: [
              Expanded(
                  child: Image(image: AssetImage(image[index]),)),
              Row(
                children: [
                  Text(name[index]),
                  SizedBox(width: 100,),
                ],
              ),
            ],
          ),
        );
      })
    ,),
  );
  }

}