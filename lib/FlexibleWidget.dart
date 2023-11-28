import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flexible Widget Example'),
        ),
        body: MyFlexibleWidget(),
      ),
    );
  }
}

class MyFlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          color: Colors.blue,
        ),
        Row(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.green,
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
            Flexible(
              flex: 7,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        Container(
          height: 100,
          color: Colors.blue,
        ),
      ],
    );
  }
}