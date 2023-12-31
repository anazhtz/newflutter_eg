import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LiquidLinearProgressIndicatorPage(),));
}
class LiquidLinearProgressIndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquid Linear Progress Indicators"),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _AnimatedLiquidLinearProgressIndicator(),
          Container(
            width: double.infinity,
            height: 35,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: LiquidLinearProgressIndicator(
              backgroundColor: Colors.black,
              valueColor: AlwaysStoppedAnimation(Colors.red),
              center: Text("loading.."),
            ),
          ),
          Container(
            width: double.infinity,
            height: 35,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: LiquidLinearProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation(Colors.pink),
              borderColor: Colors.red,
              borderWidth: 5.0,
              direction: Axis.vertical,
            ),
          ),
          Container(
            width: double.infinity,
            height: 35,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: LiquidLinearProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation(Colors.grey),
              borderColor: Colors.blue,
              borderWidth: 5.0,
              center: Text(
                "Loading...",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 35,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: LiquidLinearProgressIndicator(
              backgroundColor: Colors.lightGreen,
              valueColor: AlwaysStoppedAnimation(Colors.blueGrey),
              direction: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }
}

class _AnimatedLiquidLinearProgressIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      _AnimatedLiquidLinearProgressIndicatorState();
}

class _AnimatedLiquidLinearProgressIndicatorState
    extends State<_AnimatedLiquidLinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    _animationController.addListener(() => setState(() {}));
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = _animationController.value * 100;
    return Center(
        child: Container(
            width: double.infinity,
            height: 75.0,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: LiquidLinearProgressIndicator(
              value: _animationController.value,
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              borderRadius: 12.0,
              center: Text(
                "${percentage.toStringAsFixed(0)}%", //percentage display
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ),
       );
    }
}

//circlular

// import 'package:flutter/material.dart';
// import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
// void main()
// {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: LiquidCircularProgressIndicatorPage(),
//   ));
// }
// class LiquidCircularProgressIndicatorPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Liquid Circular Progress Indicators"),
//         centerTitle: true,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           _AnimatedLiquidCircularProgressIndicator(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               SizedBox(
//                 width: 75,
//                 height: 75,
//                 child: LiquidCircularProgressIndicator(
//                   backgroundColor: Colors.black,
//                   valueColor: AlwaysStoppedAnimation(Colors.red),
//                 ),
//               ),
//               SizedBox(
//                 width: 75,
//                 height: 75,
//                 child: LiquidCircularProgressIndicator(
//                   backgroundColor: Colors.white,
//                   valueColor: AlwaysStoppedAnimation(Colors.pink),
//                   borderColor: Colors.red,
//                   borderWidth: 5.0,
//                   direction: Axis.horizontal,
//                   center: Text("loading..."),
//                 ),
//               ),
//               SizedBox(
//                 width: 75,
//                 height: 75,
//                 child: LiquidCircularProgressIndicator(
//                   backgroundColor: Colors.white,
//                   valueColor: AlwaysStoppedAnimation(Colors.grey),
//                   borderColor: Colors.blue,
//                   borderWidth: 5.0,
//                   center: Text(
//                     "Loading...",
//                     style: TextStyle(
//                       fontSize: 12.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 75,
//                 height: 75,
//                 child: LiquidCircularProgressIndicator(
//                   backgroundColor: Colors.lightGreen,
//                   valueColor: AlwaysStoppedAnimation(Colors.blueGrey),
//                   direction: Axis.horizontal,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _AnimatedLiquidCircularProgressIndicator extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() =>
//       _AnimatedLiquidCircularProgressIndicatorState();
// }
//
// class _AnimatedLiquidCircularProgressIndicatorState
//     extends State<_AnimatedLiquidCircularProgressIndicator>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 10),
//     );
//
//     _animationController.addListener(() => setState(() {}));
//     _animationController.repeat();
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final percentage = _animationController.value * 100;
//     return Center(
//         child: SizedBox(
//             width: 150.0,
//             height: 150.0,
//             child: LiquidCircularProgressIndicator(
//               value: _animationController.value,
//               backgroundColor: Colors.white,
//               valueColor: AlwaysStoppedAnimation(Colors.blue),
//               center: Text(
//                 "${percentage.toStringAsFixed(0)}%",
//                 style: TextStyle(
//                   color: Colors.lightBlueAccent,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//            ),
//        );
//     }
// }

//custom

// import 'package:flutter/material.dart';
// import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
// void main()
// {
//   runApp(MaterialApp(home: LiquidCustomProgressIndicatorPage(),
//     debugShowCheckedModeBanner: false,));
// }
// class LiquidCustomProgressIndicatorPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Liquid Custom Progress Indicators"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           _AnimatedLiquidCustomProgressIndicator(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               LiquidCustomProgressIndicator(
//                 direction: Axis.vertical,
//                 value: 0.2,
//                 shapePath: _buildBoatPath(),
//               ),
//               LiquidCustomProgressIndicator(
//                 direction: Axis.horizontal,
//                 backgroundColor: Colors.grey[300],
//                 valueColor: AlwaysStoppedAnimation(Colors.red),
//                 shapePath: _buildSpeechBubblePath(),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   Path _buildBoatPath() {
//     return Path()
//       ..moveTo(15, 120)
//       ..lineTo(0, 85)
//       ..lineTo(50, 85)
//       ..lineTo(50, 0)
//       ..lineTo(105, 80)
//       ..lineTo(60, 80)
//       ..lineTo(60, 85)
//       ..lineTo(120, 85)
//       ..lineTo(105, 120)
//       ..close();
//   }
//
//   Path _buildSpeechBubblePath() {
//     return Path()
//       ..moveTo(50, 0)
//       ..quadraticBezierTo(0, 0, 0, 37.5)
//       ..quadraticBezierTo(0, 75, 25, 75)
//       ..quadraticBezierTo(25, 95, 5, 95)
//       ..quadraticBezierTo(35, 95, 40, 75)
//       ..quadraticBezierTo(100, 75, 100, 37.5)
//       ..quadraticBezierTo(100, 0, 50, 0)
//       ..close();
//   }
// }
//
// class _AnimatedLiquidCustomProgressIndicator extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() =>
//       _AnimatedLiquidCustomProgressIndicatorState();
// }
//
// class _AnimatedLiquidCustomProgressIndicatorState
//     extends State<_AnimatedLiquidCustomProgressIndicator>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 10),
//     );
//
//     _animationController.addListener(() => setState(() {}));
//     _animationController.repeat();
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final percentage = _animationController.value * 100;
//     return Center(
//       child: LiquidCustomProgressIndicator(
//         value: _animationController.value,
//         direction: Axis.vertical,
//         backgroundColor: Colors.white,
//         valueColor: AlwaysStoppedAnimation(Colors.green),
//         shapePath: _buildHeartPath(),
//         center: Text(
//           "${percentage.toStringAsFixed(0)}%",
//           style: TextStyle(
//             color: Colors.lightGreenAccent,
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Path _buildHeartPath() {
//     return Path()
//       ..moveTo(55, 15)
//       ..cubicTo(55, 12, 50, 0, 30, 0)
//       ..cubicTo(0, 0, 0, 37.5, 0, 37.5)
//       ..cubicTo(0, 55, 20, 77, 55, 95)
//       ..cubicTo(90, 77, 110, 55, 110, 37.5)
//       ..cubicTo(110, 37.5, 110, 0, 80, 0)
//       ..cubicTo(65, 0, 55, 12, 55, 15)
//       ..close();
//     }
// }