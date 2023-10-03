import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>                       //"=>" eth use cheyyunnath single line thiraan aan
     MaterialApp(useInheritedMediaQuery: true, debugShowCheckedModeBanner:false ,
       theme: ThemeData(primaryColor: Colors.indigo,),//useinhe true koduthath app ellaa phonel connect avaan

      home: Sample(),
    ),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text("MyCart"),backgroundColor:Colors.lightGreen,
      //),
        body: Container(color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.only(top: 250,right: 50,left: 50),
          child: Center(
            child: Column(
              children: [
                Image(image: AssetImage("assets/logo.png"),height: 180,width: 180,),
                Text(
                  "Welcome to MyCart",
                  style: TextStyle(
                      fontSize: 30, color: Colors.red[900], fontStyle: FontStyle.italic,fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
