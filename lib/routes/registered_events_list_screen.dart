import 'package:commudle/widgets/event_card.dart';
import 'package:flutter/material.dart';

class RegisteredEventsList extends StatefulWidget {
  @override
  _RegisteredEventsListState createState() => _RegisteredEventsListState();
}

class _RegisteredEventsListState extends State<RegisteredEventsList> {
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
                  "Registered Events",
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
