import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


  void main(){
    runApp(DevicePreview(builder: (BuildContext context)=>
        MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
          home: Listviewbuilder(),
        )
    ));

}
class Listviewbuilder extends StatelessWidget{
  var name=["Facebook","Whatsapp","Twitter","Instagram","Threads","Gmail","Anas","Safwan","rashad","Ansil"];
  var icon=["F","W","T","I","T","G","A","S","R","AN"];
  var amount=["€320","€450","€360","€850","€221","€154","\$300","\$620","\$980","\$298"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Builder"),),
      body: ListView.builder(itemBuilder: (context, index){
        return Card(
          child: ListTile(
            leading:CircleAvatar(child: Text(icon[index]),backgroundColor: Colors.blue[700],),
            title: Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
            trailing: Text(amount[index]),

          ),
        );
    },itemCount: name.length,
    )
    );
  }
}