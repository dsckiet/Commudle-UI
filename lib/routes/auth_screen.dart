import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 120.0),
              ),
              const Image(image: AssetImage('assets/images/authPageImage.png')),
              Padding(padding: EdgeInsets.only(top: 32.0)),
              FittedBox(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  onPressed: navigationPage,
                  child: Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/googlelogo.png'),
                        height: 36,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                      ),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF4285F4)),
                      )
                    ],
                  ),
                  color: const Color(0xFFF9F9F9),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0),
              ),
              Text(
                "Privacy Policy",
                style: Theme.of(context).textTheme.body1,
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: navigationPage,
                    child: Text(
                    "Skip >>",
                    style: Theme.of(context).textTheme.body1,
                  ),
                ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }
}
