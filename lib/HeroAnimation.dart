import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HeroAnimpage2.dart';
import 'HeroAnimpage2.dart';
void main(){
  runApp(MaterialApp(home: myhomepage(),debugShowCheckedModeBanner: false,));
}

class myhomepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>myhomepagestate();

}
class  myhomepagestate extends  State<myhomepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Colors.black,title: Text("HERO ANIMATION",style: TextStyle(color: Colors.red),),),
        body: GestureDetector(onTap:() {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
          { return page2();}));},
          child: Hero(
            tag: "Hero1",
            child: Image(image: AssetImage("assets/Leo😁.jpeg"),
              height: 150,),),

        ),
        );
   }

  }