import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 1.0;

  startTime() async {
    var _duration = new Duration(milliseconds: 3000);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/IntroScreen');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Padding(
          padding: EdgeInsets.all(120),
          child: Image(
            image: AssetImage('assets/images/commudle-logo.png'),
          ),
        ),
        Container(
          child: GestureDetector(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 2600),
              opacity: this._opacity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      const Color(0xFF4F73FF),
                      const Color(0xFF28A6FF)
                    ])),
              ),
            ),
            onTap: () {
              setState(() => this._opacity = 1.0 - this._opacity);
              startTime();
            },
          ),
        ),
      ]),
    );
  }
}
