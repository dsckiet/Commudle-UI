import 'package:commudle/widgets/event_card.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 48.0),
                child: Text(
                  "Events",
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0,left: 20.0),
                child: Image(
                  image: AssetImage('assets/images/temp-wtm.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0,top: 4.0),
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
