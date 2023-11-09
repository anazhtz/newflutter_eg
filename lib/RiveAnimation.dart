import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(MaterialApp(
  home: MyRiveAnimation(),
));

class MyRiveAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          height: 250,
          child: RiveAnimation.asset(
            'RiveAnimation/5933-11525-loading-animation.riv',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}