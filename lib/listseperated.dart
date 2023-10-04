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
  var icons=[Icons.person,Icons.person,Icons.person];
  var name=["Anaz","ANaz","Sanu","Manu"];
  var phone=["8136857569","8136857569","8136857569","8136857569"];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
body: ListView.separated(itemBuilder: (context, index){
  return Card(color: Colors.white,
    child: ListTile(
      leading: const Icon(Icons.person),
      title: Text(name[index]),
      subtitle: Text(phone[index]),
      trailing: const Icon(Icons.alarm),
    ),
  );
}, separatorBuilder: (context, index){
  return const Divider(
    thickness: 5,
    color: Colors.orange,
  );
}, itemCount: name.length),
   );
  }

}