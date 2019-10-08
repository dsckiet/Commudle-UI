import 'package:commudle/routes/about_screen.dart';
import 'package:commudle/routes/events_screen.dart';
import 'package:commudle/routes/team_screen.dart';
import 'package:commudle/widgets/sessions_card.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: 48.0,
                        bottom: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap:(){Navigator.pop(context);},
                            child: Icon(
                              IconData(58848,
                                  fontFamily: 'MaterialIcons',
                                  matchTextDirection: true),
                              color: const Color(0xFF707070),
                            ),
                          ),
                          Text(
                            'Community Details',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Icon(
                            const IconData(59389, fontFamily: 'MaterialIcons'),
                            color: const Color(0xFF707070),
                            size: 28.0,
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/temp-wtm.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
                      child: Text(
                        'Developers Student Clubs KIET',
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                const IconData(58900,
                                    fontFamily: 'MaterialIcons'),
                                color: const Color(0xFF707070),
                              ),
                              Text(
                                'Events Count: 8',
                                style: Theme.of(context).textTheme.body1,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                const IconData(59603,
                                    fontFamily: 'MaterialIcons'),
                                color: const Color(0xFF707070),
                              ),
                              Text(
                                'Members: 5',
                                style: Theme.of(context).textTheme.body1,
                              ),
                            ],
                          ),
                        ]),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Recent Sessions',
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: <Widget>[
                          SessionsCard(),
                          SessionsCard(),
                          SessionsCard(),
                          SessionsCard(),
                          SessionsCard(),
                          SessionsCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 20,left: 20.0,right: 20.0),
        child: BottomAppBar(

          child: Container(
            padding: EdgeInsets.only(
                top: 8.0, left: 32.0, right: 32.0, bottom: 8.0),
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                    padding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
                    child: Text(
                      'Events',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: const Color(0xFFEA4335),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EventsScreen()),
                      );
                    }),
                RaisedButton(
                    padding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: const Color(0xFFEA4335),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutScreen()),
                      );
                    }),
                RaisedButton(
                    padding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
                    child: Text(
                      'Team',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: const Color(0xFFEA4335),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TeamScreen()),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
