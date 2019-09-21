import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage("assets/images/introPageImage.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 12.0)),
            const Text(
              "Commudle",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF707070),
              ),
            ),
            Padding(padding: EdgeInsets.all(32.0),
              child:
              const Text(
                "A community platform that helps communities to grow.",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF707070),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 32.0)),
            RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 48),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF4285F4),
                  ),
                ),
                color: const Color(0xFFF9F9F9),
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                onPressed: (){
                  navigationPage();
                }
            )
          ],
        ),
      ),
    );
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/AuthScreen');
  }
}
