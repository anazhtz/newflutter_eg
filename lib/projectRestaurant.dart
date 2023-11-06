// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(home: Restaurent(),debugShowCheckedModeBanner: false,));
// }
//
// class Restaurent extends StatefulWidget{
//   @override
//   State<Restaurent> createState() => _RestaurentState();
// }
//
// class _RestaurentState extends State<Restaurent> {
//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
//      body: CustomScrollView(
//        slivers: [
//          SliverAppBar(
//            expandedHeight: 150,
//            leading: Icon(Icons.menu),
//            backgroundColor: Colors.teal[600],
//            title: Center(child: Text("Type your Location",style:TextStyle(fontSize: 20) ,),
//            ),actions: [
//              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
//          ],
//            bottom: AppBar(
//              backgroundColor: Colors.teal[600],
//              elevation: 0,
//              title: TextField(
//                style: TextStyle(color: Colors.white70),
//                decoration: InputDecoration(
//                  fillColor: Colors.white70,
//                  filled: true,
//                  border: InputBorder.none,
//                  hintText: "search location",
//                  suffixIcon: Icon(Icons.search),
//                  enabledBorder: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(25),
//                    borderSide: BorderSide(color: Colors.transparent),
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//   );
//   }
// }
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: resort(),
      )));
}

class resort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            expandedHeight: 150,
            backgroundColor: Colors.teal,
            floating: true,
            pinned: true,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(top: 30, bottom: 5),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Type Your Location",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [Icon(Icons.favorite_border)],
            leading: Container(
              child: Icon(Icons.menu),
            ),
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.teal,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(150)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Kakkanad ,Kochi",
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 100,
                  width: 200,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Positioned(
                        right: 30,
                        top: 40,
                        child: Container(
                          child: Column(
                            children: [
                              Icon(Icons.local_cafe),
                              Center(child: Text("Cafe")),
                            ],
                          ),
                          color: Colors.red,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Positioned(
                          left: 145,
                          top: 40,
                          child: Container(
                            child: Column(
                              children: [
                                Icon(Icons.restaurant),
                                Center(child: Text("Restaurant")),
                              ],
                            ),
                            color: Colors.cyan,
                            height: 100,
                            width: 100,
                          )),
                      Positioned(
                        left: 30,
                        top: 40,
                        child: Container(
                          child: Column(
                            children: [
                              Icon(Icons.hotel),
                              Center(child: Text("hotel")),
                            ],
                          ),
                          color: Colors.amberAccent,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30,),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15,bottom: 10),
                          child: Image(
                            image: NetworkImage(
                                "https://assets.simpleviewinc.com/simpleview/image/up"
                                    "load/c_limit,h_1200,q_75,w_1200/v1/"
                                    "clients/milwaukee/VM_Hilton_Plaza_Suite_King_Room_9b5d673a"
                                    "-95c6-445e-ad6b-5ae85e260f18.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ]
              )),
        ]));
  }
}