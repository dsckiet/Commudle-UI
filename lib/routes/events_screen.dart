import 'package:commudle/widgets/event_card.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, top: 48.0, bottom: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap:(){ Navigator.pop(context);},
                      child: Icon(
                        IconData(58848,
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true),
                        color: const Color(0xFF707070),
                      ),
                    ),
                    Text(
                      'Events',
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
              Container(
                padding: EdgeInsets.only(top: 16.0, left: 20.0),
                child: Image(
                  image: AssetImage('assets/images/temp-wtm.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, top: 4.0),
                child: Text(
                  'Developer Student Clubs KIET',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    EventCard(),
                    EventCard(),
                    EventCard(),
                    EventCard(),
                    EventCard(),
                    EventCard(),
                    EventCard(),
                    EventCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
