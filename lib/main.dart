import 'package:flutter/material.dart';

import 'package:commudle/splashScreen.dart';
import 'package:commudle/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => HomeScreen()
      },
=======
    return new Scaffold(
      body: new Center(
        child: new Image.asset('images/commudle-logo.png', width:500, height: 100),
      ),
>>>>>>> 02dc4562b5fe22a623ad63d5982c6f2e26eecc8b
    );
  }
}
