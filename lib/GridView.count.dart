import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: Gridviewcount(),));
}
class Gridviewcount extends StatelessWidget{
  var name = ["Anaz", "Rashad", "Rahul", "Safuwan","manu","saalu","silu"];
  var image = ["assets/facebook.png",
    "assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png"
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.count(crossAxisCount: 3,                     //gridview.extand koduthaal extand aavum
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
       },)
     ,),
   );
  }

}