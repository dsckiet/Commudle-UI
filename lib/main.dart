import 'package:flutter/material.dart';

import 'package:commudle/routes/splashScreen.dart';
import 'package:commudle/routes/introScreen.dart';
import 'package:commudle/routes/authScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Commudle",

      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: const Color(0xFF4285F4),
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/IntroScreen': (BuildContext context) => IntroScreen(),
        '/AuthScreen': (BuildContext context) => AuthScreen(),
      },
    );
  }
}
