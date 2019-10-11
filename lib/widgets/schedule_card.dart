import 'package:flutter/material.dart';

class ScheduleCard extends StatefulWidget {
  @override
  _ScheduleCardState createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 8.0,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          side: BorderSide(color: Color(0xFF707070), width: 1.0),
        ),
        // elevation: 6.0,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '09:00 AM',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF4885ED),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Lets's play with Google Cloud ",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF0F9D58),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "By Rohan Mehta ",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF707070),
                      ),
                    ),
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
