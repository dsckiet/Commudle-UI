import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 28.0, bottom: 16.0),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        IconData(58848,
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true),
                        color: const Color(0xFF707070),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Profile",
                        style: Theme.of(context).textTheme.headline,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Image(
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage('assets/images/profileImage.png'),
                ),
              ),
              Text(
                'Aakash Goel',
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                'goelaakash79@gmail.com',
                style: Theme.of(context).textTheme.body1,
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: Text(
                  'Events Attendeed: 45',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  'Events Registered: 60',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Twitter Handle',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text(
                  'goelaakash79',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'GitHub Handle',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text(
                  'goelaakash79',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'LinkedIn Handle',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text(
                  'goelaakash79',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 28.0, bottom: 20.0),
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Update Details',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.white),
                    ),
                  ),
                  color: const Color(0xFF4285F4),
                  onPressed: () {},
                ),
              ),
              InkWell(
                onTap: networkErrorPage,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Logout',
                    style: TextStyle(color: Color(0xFFDB4437)),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void networkErrorPage() {
    Navigator.of(context).pushNamed('/NetworkError');
  }
}
