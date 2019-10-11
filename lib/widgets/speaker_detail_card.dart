import 'package:flutter/material.dart';

class SpeakerDetailCard extends StatefulWidget {
  @override
  _SpeakerDetailCardState createState() => _SpeakerDetailCardState();
}

class _SpeakerDetailCardState extends State<SpeakerDetailCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Color(0xFF707070), width: 1.0),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 24.0,
              child: Container(
                padding: EdgeInsets.all(4.0),
                child: Image(
                  image: AssetImage('assets/images/profileImage.png'),
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Shubham Singh',
                    style: Theme.of(context).textTheme.body1,
                  ),
                  Text(
                    'Android Developer',
                    style: Theme.of(context).textTheme.body1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
