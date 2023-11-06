import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Homeuii(),
      )
  )
  );
}


class Homeuii extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: Column(
          children: [
            Text(
              "FARMERS FRESH ZONE", style: TextStyle(fontSize: 20),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Badge(
              isLabelVisible: true,
              child: Icon(Icons.location_on_outlined)),
          ),
          Center(child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text("Kochi"),
          )),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Padding(
            padding: EdgeInsets.only(left: 16.0,
                right: 16.0,
                bottom: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search vegetable and Fruits",
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal, fontSize: 15,),
                prefixIcon: Icon(Icons.search,),

                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white70,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 20),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border:Border.all(color: Colors.greenAccent),),
                        child: TextButton(onPressed: (){}, child: Text("VEGITABLES",style: TextStyle(color: Colors.greenAccent[400]),))),
                  )
                 ,
                 Padding(
                   padding: const EdgeInsets.only(left: 30,top: 20),
                   child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border:Border.all(color: Colors.greenAccent),),
                       child: TextButton(onPressed: (){}, child: Text("FRUITS",style: TextStyle(color: Colors.greenAccent[400]),),)),
                 )
                  ,Padding(
                    padding: const EdgeInsets.only(left: 30,top: 20),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border:Border.all(color: Colors.greenAccent),),
                        child: TextButton(onPressed: (){}, child: Text("EXOTIC CUTS",style: TextStyle(color: Colors.greenAccent[400]),))),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}