// "actions"

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'GridviewProject.dart';
import 'StaggeredGridView.dart';
import 'WHATSAPP/Callscreen.dart';
import 'WHATSAPP/Camerascreen.dart';
import 'WHATSAPP/Statusscreen.dart';
import 'WHATSAPP/chatlistwt.dart';
import 'listseperated.dart';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Tabbar(),
      )
  )
  );
}

class Tabbar extends StatefulWidget {
  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Color(0xff075E54),
          actions: [
            //app nde ullil functiopns create cheyyaan
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Icon(Icons.search),
            ),
            //Icon(Icons.camera_alt),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Settings")),
                  PopupMenuItem(child: Text("Create Group")),
                  PopupMenuItem(child: Text("Create Broadcast")),
                  PopupMenuItem(child: Text("Help")),
                  PopupMenuItem(child: Text("LogOut")),
                ];
              },
            )
          ],
          bottom: TabBar(indicatorColor:Colors.white,
              tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(child: Text("CHAT"),),
            Tab(child: Text("STATUS")),
            Tab(child: Text("CALLS"),)

          ]),
        ),
        body: TabBarView(children: [
          Camerascreen(),
          Chatlist(),
          Statusscreen(),
          Callscreen(),

        ],),
      ),
    );
  }
}
