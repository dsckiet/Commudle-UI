import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {
  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            // child: Container(
            //   height: 100.0,
            child: Image(
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/upcomingCardBack.png'),
            ),
            // ),
          ),
          Container(
            color: Colors.black45,
            padding: EdgeInsets.only(
              left: 12.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "WTM New Delhi",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Image(
                            height: 24.0,
                            image: AssetImage('assets/images/temp-wtm.png'),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Web Developer Day-3",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 16.0, top: 20.0, bottom: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 60.0,
                      color: Colors.black,
                      child: Text(
                        "12\nSept",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
