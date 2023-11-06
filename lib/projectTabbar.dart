import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Tabbarproject(),
      )
  )
  );
}
class Tabbarproject extends StatefulWidget{
  @override
  State<Tabbarproject> createState() => _TabbarprojectState();
}

class _TabbarprojectState extends State<Tabbarproject> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
length: 6,
      child: Scaffold(
        appBar: AppBar(title: Text("Flipkart"),
        backgroundColor: Colors.teal,
          bottom: TabBar(
            isScrollable:true,
              unselectedLabelColor: Colors.red,
              tabs: [
            Tab(icon: Icon(Icons.home),child: Text("Home"),),
            Tab(icon: Icon(Icons.account_box_outlined),child: Text("Accounts"),),
            Tab(icon: Icon(Icons.alarm),child: Text("Alarm"),),
            Tab(icon: Icon(Icons.chat),child: Text("Chat"),),
            Tab(icon: Icon(Icons.help),child: Text("Help"),),
            Tab(icon: Icon(Icons.search),child: Text("Search"),),
          ],),
        ),

      ),
    );
  }
}