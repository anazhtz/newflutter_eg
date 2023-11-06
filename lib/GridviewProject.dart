import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Gridviewprj(),
      )
  ));

}
class Gridviewprj extends StatelessWidget{
var name=["Home","Email","Alarm","Wallet","Backup","Book","Camera","Person","Print","phone","Notes","Music"];
var icon=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera,Icons.person,Icons.print,Icons.phone,Icons.notes,Icons.music_video];
var color=[Colors.yellow,Colors.grey,Colors.orange[50],Colors.pink,Colors.red[100],Colors.green[100],Colors.blue[200],Colors.brown[300],Colors.greenAccent[200],Colors.purple[200],Colors.grey,Colors.white30];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
   // appBar: AppBar(),
    body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    children:
      List.generate(12, (index) {
           return Card(color: color[index],
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(icon[index],size: 80
                   ,),
                 Text(name[index],textAlign: TextAlign.center,),


               ],
             ),

);
      },
      )
    ),
  );
  }

}