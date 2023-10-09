import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Listseperated(),
      )
  ));
}
class Listseperated extends StatelessWidget{

  var name=["List 1","List 2","List 3","List 4","List 5","List 6","List 7","List 8","List 9","List 10"];
  var sep=["Separated 1","Separated 2","Separated 3","Separated 4","Separated 5","Separated 6",
    "Separated 7","Separated 8","Separated 9","Separated 10","Separated 11"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Separated"),),
      body: ListView.separated(itemBuilder: (context, index){
        return Card(color: Colors.white,
          child: ListTile(
            title: Text(name[index]),
          ),
        );
      }, separatorBuilder: (context, index){
        return Container(child: Text(sep[index],style: TextStyle(color: Colors.white)),padding: EdgeInsets.only(top: 4,left: 5),
          height:25,width:20,decoration: BoxDecoration(color: Colors.grey[500],
          borderRadius: BorderRadius.circular(8.0)),
        );
      }, itemCount: name.length),
    );
  }

}