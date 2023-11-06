import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Sliverss(),));
}
class Sliverss extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,   //seach engin scroll cheyyumbo pin cheyyan
            expandedHeight: 150, //appbarinde size hight kuttaan
          // flexibleSpace: Container(color: Colors.red,),
            
            title: Text("Slivers App Bar"),
            actions: [
              IconButton(onPressed: (){

              }, icon: Icon(Icons.favorite)),
              IconButton(onPressed: (){

              }, icon: Icon(Icons.shopping_cart)),
            ],
            bottom: AppBar(
              elevation: 0,     //appbar cutting oyvakkan
              title: Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for products",suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text("Anaz"),
                subtitle: Text("8136857569"),
              ),

            ]
          )),

        ],
      ),
    );
  }

}