import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Drawereg(),
      )
  )
  );
}
class Drawereg extends StatefulWidget{
  @override
  State<Drawereg> createState() => _DraweregState();
}

class _DraweregState extends State<Drawereg> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Accounts"),backgroundColor: Colors.indigo[900],),
     endDrawer: Drawer(),
     drawer: Drawer(
       child: ListView(
         children: [
           //DrawerHeader(child: Container(height: 50,width: MediaQuery.of(context).size.width,child: Image.asset("assets/instagram.png"),)),
           //Image(image: AssetImage("assets/instagram.png"),width: 110,height: 80,),
             UserAccountsDrawerHeader(
               decoration: BoxDecoration(color:Colors.white),


              // decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D&w=1000"),fit: BoxFit.fill)),
         accountName: Text("Anaz Htz",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
               accountEmail: ListView(
                 children: [
                   Text("htzanaz@gmail.com",style: TextStyle(color: Colors.black45),),
                   Padding(
                     padding: const EdgeInsets.only(top: 15),
                     child: Row(
                       children: [
                         Text("15,523",style: TextStyle(color: Colors.black),),
                         Text(" Followers",style: TextStyle(color: Colors.black45),),
                         Text("     4,890 ",style: TextStyle(color: Colors.black),),
                         Text("Following",style: TextStyle(color: Colors.black45),),
                       ],
                     ),
                   )
                 ],
               ),
             currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/Anaz.png"),),
             // otherAccountsPictures: [
             //   CircleAvatar(backgroundImage: NetworkImage("https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt12dbddde5342ce4c/648866ff21a8556da61fa167/GOAL_-_Blank_WEB_-_Facebook_-_2023-06-13T135350.847.png?auto=webp&format=pjpg&width=3840&quality=60"),)
             // ],
       ),
              ListTile(
            leading: Icon(Icons.home,size: 35,color: Colors.black,),
                title: Text("Home"),
),
           ListTile(
             leading: Icon(Icons.message,size: 35,color: Colors.black,),
             title: Text("Message"),
           ),
           ListTile(
             leading: Icon(Icons.sync,size: 35,color: Colors.black,),
             title: Text("Synch"),
           ),
           ListTile(
             leading: Icon(Icons.restore_from_trash_outlined,size: 35,color: Colors.black,),
             title: Text("Trash"),
           ),
           ListTile(
             leading: Icon(Icons.settings,size: 35,color: Colors.black,),
             title: Text("Settings"),
           ),
           Divider(),
           Text("  Profile",style: TextStyle(color: Colors.black45,fontStyle: FontStyle.normal),),
           ListTile(
             leading: Icon(Icons.login_outlined,size: 35,color: Colors.black),
             title: Text("LogOut"),
           ),
           Divider(),
           Text("  Commmunicate",style: TextStyle(color: Colors.black45),),
           ListTile(
             leading: Icon(Icons.share,size: 35,color: Colors.black,),
             title: Text("Share"),
           ),
           ListTile(
             leading: Icon(Icons.help_center,size: 35,color: Colors.black,),
             title: Text("Help Center"),
           ),
           ListTile(
             leading: Icon(Icons.rate_review,size: 35,color: Colors.black,),
             title: Text("Rate us"),
           ),
           Divider(),
           ElevatedButton(onPressed: (){}, child: Text("Sign out"),style:ElevatedButton.styleFrom(fixedSize: Size(10  , 20),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all((Radius.circular(10))))),),


         ],
       ),
     ),
   );
  }
}