import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'WHATSAPP/chatlistwt.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            // ignore: deprecated_member_use
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Prjslivers(),
          )));
}

class Prjslivers extends StatefulWidget {
  const Prjslivers({super.key});

  @override
  State<Prjslivers> createState() => _PrjsliversState();
}

class _PrjsliversState extends State<Prjslivers> {
  var screen = [
    Chatlist(),
    Chatlist(),
    Chatlist(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Conversations",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "+ Add new",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.white,
              elevation: 0, //appbar cutting oyvakkan
              title: TextField(
                style: const TextStyle(color: Colors.transparent),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintText: "Search contacts",
                  suffixIcon: const Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Today"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Today"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Today"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Today"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Today"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Yesterday"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Yesterday"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Yesterday"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Yesterday"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Yesterday"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Yesterday"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Yesterday"),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text("Anaz"),
              subtitle: Text("8136857569"),
              trailing: Text("Yesterday"),
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
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.red,
        currentIndex: index,
        onTap: (tapinx) {
          setState(() {
            index = tapinx;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.disc_full_outlined), label: "Channels"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
