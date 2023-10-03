import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Homepage(),
      )
  )
  );
}
class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>homepagestate();
  
}
class homepagestate extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
     appBar: AppBar(title: Text("Recents"),),
     body:ListView(                                            //thaye thaye lists varaan
   children: [
     Card(color: Colors.blue[200],                  //card use cheyne card model list veraan .. also we can change color
       child: ListTile(
         leading: Icon(Icons.person),                              // pagonte 1st phto or icon add cheyyaan   ( CircleAvatar "photo add cheyaan
         title: Text("Anaz",style: TextStyle(color: Colors.red)),                                      //eth title kokkaan
         subtitle: Text("8136857569",style: TextStyle(color: Colors.red),),                           //title nde  thaye vere subtilr kodkkaan
         trailing: Icon(Icons.call,color: Colors.red,),                             //last potto or icon kodkkaan
       ),
     ),
   ],
 )
 );
  }
}
