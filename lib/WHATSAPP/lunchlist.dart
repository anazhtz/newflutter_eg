import 'package:flutter/material.dart';
import 'package:newflutter_eg/prjctListvewBuilder.dart';
import 'chat.dart';

void main(){
  runApp(MaterialApp(home: Chatlist(),));
}

class Chatlist extends StatefulWidget{
  @override
  State<Chatlist> createState() => _ChatlistState();
}

class _ChatlistState extends State<Chatlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:ListView(
          children: [
            Card(
              color: Colors.white,
              child: Container(
                child: Row(
                  children: [
                    Container(color: Colors.red,width: 50,
                      child: Column(
                        children: [
                          Text("Anax"),
                          Text("okay bye"),
                        ],
                      ),

                    ),Text("pafgs")
                  ],

                ),
              ),
            ),
          ],
        )

      ),
    );
  }
}