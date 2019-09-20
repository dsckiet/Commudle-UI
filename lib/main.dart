import 'package:flutter/material.dart';

import 'package:commudle/splashScreen.dart';
import 'package:commudle/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => HomeScreen()
      },
    );
  }
}
