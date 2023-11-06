import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: Staggered(),debugShowCheckedModeBanner: false,));

}
class Staggered extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      titleSpacing: 20,
      backgroundColor: Colors.white,
      title: Text("Add image",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
    ),
    body: SingleChildScrollView(
      child: StaggeredGrid.count(crossAxisCount: 4,children: [                       //Staggerd cutomise cheyth container undakkan
        StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount: 2, child: Container(child: Image(image: AssetImage("assets/fb.png"),fit: BoxFit.fill,),
          color:  Colors.cyan,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 1,mainAxisCellCount: 2, child: Container(child:  Image(image: AssetImage("assets/logo.png"),fit: BoxFit.fill,),
          color:  Colors.green,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1, child: Container(
          color:  Colors.yellow,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
          color:  Colors.red,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 3, child: Container(
          color:  Colors.purple,
        )
        ),StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
          color:  Colors.cyan,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
          color:  Colors.tealAccent,
        )
        ),
      ],),
    ),
  );
  }

}