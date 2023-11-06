import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridviewcustom(),));
}

class Gridviewcustom extends StatelessWidget{
  var name = ["Anaz", "Rashad", "Rahul", "Safuwan","manu","saalu","silu"];
  var image = ["assets/facebook.png",
    "assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png","assets/facebook.png"
  ];
  var amount=["€320","€450","€360","€850","€221","€154","\$300","\$620","\$980","\$298"];
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20), childrenDelegate: SliverChildBuilderDelegate((context, index){
     return Container(color: Colors.yellow[50],
       child: Column(
         children: [
           Expanded
             (child: Image(image: AssetImage(image[index]),fit: BoxFit.fill,)),
           SizedBox(height: 20,),
           Row(
             children: [
               Text(name[index],style: TextStyle(color: Colors.red),),
               SizedBox(width: 100,),
               Text(amount[index]),
             ],
           ),

         ],
       ),
     );
     // return Card(
     //   child: ListTile(
     //     leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
     //     trailing: Icon(Icons.shopping_bag),
     //     title: Text(name[index]),
     //
     //   ),
     //
     // );
   },
   childCount: name.length)),
 );
  }

}