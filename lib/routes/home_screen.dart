import 'package:commudle/routes/community_screen.dart';
import 'package:commudle/routes/profile_screen.dart';
import 'package:commudle/widgets/community_card.dart';
import 'package:commudle/widgets/next_event_card.dart';
import 'package:commudle/widgets/event_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget communitiesWidget() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Communities",
                style: Theme.of(context).textTheme.title,
              ),
              GestureDetector(
                onTap: navigationPage,
                child: Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: const Color(0xFFDB4437),
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 100.0,
            child: Container(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                  ),
                  InkWell(
                    child: CommunityCard(),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommunityScreen()),
                      );
                    },
                  ),
                  CommunityCard(),
                  CommunityCard(),
                  CommunityCard(),
                  CommunityCard(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget nextEventWidget() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "My next event",
                style: Theme.of(context).textTheme.title,
              ),
              GestureDetector(
                  onTap: navigationPage1,
                  child: Text(
                    "Registered Events",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF0F9D58),
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Container(
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                NextEventCard(),
                NextEventCard(),
                NextEventCard(),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget upcomingEvents() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Upcoming Events",
                style: Theme.of(context).textTheme.title,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Container(
              child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              EventCard(),
              EventCard(),
              EventCard(),
            ],
          )),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return new Future.value(true);
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, top: 48.0, bottom: 16.0, right: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                        ),
                        Expanded(
                          child: Text(
                            "Home",
                            style: Theme.of(context).textTheme.headline,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        InkWell(
                          child: Icon(
                            const IconData(59389, fontFamily: 'MaterialIcons'),
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
                  Container(
                    child: communitiesWidget(),
                  ),
                  Container(
                    child: nextEventWidget(),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: upcomingEvents(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void navigationPage() {
    Navigator.pushNamed(context, '/CommunitiesListScreen');
  }

  void navigationPage1() {
    Navigator.pushNamed(context, '/RegisteredEventScreen');
  }
}
