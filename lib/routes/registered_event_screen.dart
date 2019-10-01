import 'package:commudle/widgets/event_card.dart';
import 'package:flutter/material.dart';

class RegisteredEvent extends StatefulWidget {
  @override
  _RegisteredEventState createState() => _RegisteredEventState();
}

class _RegisteredEventState extends State<RegisteredEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 48.0, bottom: 16.0),
                child: Text(
                  "Registered Event",
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 16.0),
                child: EventCard(),
              ),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      height: 200.0,
                      width: 200.0,
                      image: AssetImage('assets/images/hello.png'),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Status',
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      'RSVP Confirmed',
                      style: Theme.of(context).textTheme.body1,
                    ),
                    Text(
                      'Location',
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      '91 Springboard, MG Road, Gurugram',
                      style: Theme.of(context).textTheme.body1,
                    )
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
