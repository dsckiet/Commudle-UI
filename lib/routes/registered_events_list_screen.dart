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
              Container(
                padding: EdgeInsets.only(left: 16.0, top: 48.0, bottom: 16.0,right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap:(){ Navigator.pop(context);},
                      child: Icon(
                        IconData(
                            58848, fontFamily: 'MaterialIcons', matchTextDirection: true
                        ),
                        color: const Color(0xFF707070),
                      ),
                    ),
                    Text(
                      'Registered Events',
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
