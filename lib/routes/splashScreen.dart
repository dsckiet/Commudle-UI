import 'package:flutter/material.dart';
import 'dart:async';

import 'package:commudle/widgets/animatedBackground.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/IntroScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //       child: Container(
    //     decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //           colors: [Color(0xff4F73FF), Color(0xff28A6FF)])),
    //     child: Center(
    //       child: new Image.asset('images/commudle-logo.png', width: 500, height: 100),
    //       ),
    //     ),
    //   )); 
    return Scaffold(
      body: new Center(
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned.fill(child: AnimatedBackground()),
              Positioned.fill(
                child: Center(
                  child: new Image.asset('assets/images/commudle-logo.png', width: 500, height: 100),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
