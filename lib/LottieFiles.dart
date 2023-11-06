import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: Lottieani(),));
}
class Lottieani extends StatefulWidget{
  @override
  State<Lottieani> createState() => _LottieaniState();
}

class _LottieaniState extends State<Lottieani> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: ListView(
    children: [
      Lottie.asset("Animation/loadinganimi.json"),
    ],
  ),
);
  }
}