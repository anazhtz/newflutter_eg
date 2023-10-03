import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context) =>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Loginpage(),
      )
  ));
}

class Loginpage extends StatefulWidget{
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showpass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page"),backgroundColor: Colors.red[900],),
      body:Container(child:Center(
        child: Column(
        children: [
          const SizedBox(height: 50,),              //this use photo body ethra height dft cheyyan
          const Image(image: AssetImage("assets/Papirus-Team-Papirus-Apps-Netflix.512.png",),height: 100 ,width: 100,),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                hintText: "Username",

                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))), //aa boxintrnvalppam mark cheyyaan

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50,top: 20),
            child: TextField(
              obscureText: showpass,          //it use password hide cheyyaan adikkumbool star
              obscuringCharacter: "*",     //star use cheyyaan
              decoration: InputDecoration(prefixIcon: const Icon(Icons.lock),      //username box icon add cheyyan
                suffixIcon:IconButton(onPressed: (){
                  setState(() {                            //it use pass hide and unhide method
                    if(showpass){
                      showpass=false;
                    }
                    else{
                      showpass=true;
                    }
                  });
                }, icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility),), //Icon(Icons.visibility_off),   //pass icon add cheyyaan
                hintText: "Password",                        //box just "pass aan enn water mark kaanikaan
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),     //      
            ),
          ),
            const SizedBox(height: 30,),
          ElevatedButton( onPressed: (){}, child: Text("Login"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),), //button nde onpress nde ullilaan login cheyyumbol next page work cheyyunnath
          const SizedBox(height: 30),
          TextButton(onPressed: (){}, child: Text("Create a new user",style: TextStyle(color: Colors.red[900]
          )
            ,selectionColor: Colors.black,)),           
          TextButton(onPressed: (){}, child: Text("Forgot password",style: TextStyle(color: Colors.red[900]),
          selectionColor: Colors.black,)),             



        ],
        )
    )
    )
    );
  }
}