import 'package:commudle/routes/about_screen.dart';
import 'package:commudle/routes/events_screen.dart';
import 'package:commudle/routes/profile_screen.dart';
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
      body: Stack(
        children: <Widget>[
          Column(
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
                              Text(
                                'Community Details',
                                style: Theme.of(context).textTheme.headline,
                              ),
                              InkWell(
                                child: Icon(
                                  const IconData(59389,
                                      fontFamily: 'MaterialIcons'),
                                  color: const Color(0xFF707070),
                                  size: 28.0,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfileScreen()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/images/temp-wtm.png'),
                              ),
                              Flexible(
                                child: Container(
                                  padding:
                                      EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    'Developer student clubs KIET',
                                    style: Theme.of(context).textTheme.title,
                                  ),
                                ),
                              ),
                            ],
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
                          padding: EdgeInsets.only(bottom: 100.0),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              child: Container(
                //height: 70,
                padding: EdgeInsets.only(bottom: 20, left: 20.0, right: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Container(
                    color: Color(0xFF263238),
                    height: 50,
                    padding:
                        EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                    // color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventsScreen()),
                            );
                          },
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  color: Colors.black54,
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: const Color(0xFFF1F1F1),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EventsScreen()),
                                    );
                                  },
                                ),
                                Text(
                                  'Events',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFF1F1F1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutScreen()),
                            );
                          },
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  color: Colors.black54,
                                  icon: Icon(
                                    Icons.info_outline,
                                    color: const Color(0xFFF1F1F1),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AboutScreen()),
                                    );
                                  },
                                ),
                                Text(
                                  'About',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFF1F1F1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TeamScreen()),
                            );
                          },
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  color: Colors.black54,
                                  icon: Icon(
                                    Icons.contacts,
                                    color: const Color(0xFFF1F1F1),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TeamScreen()),
                                    );
                                  },
                                ),
                                Text(
                                  'Team',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFF1F1F1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar:
    );
  }
}
