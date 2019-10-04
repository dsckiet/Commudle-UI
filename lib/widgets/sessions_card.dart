import 'package:flutter/material.dart';

class SessionsCard extends StatefulWidget {
  @override
  _SessionsCardState createState() => _SessionsCardState();
}

class _SessionsCardState extends State<SessionsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      color: const Color(0xFFF9F9F9),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(
              'What\'s new in constraint layout',
              style: Theme.of(context).textTheme.body1,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                children: <Widget>[
                  Image(
                    height: 36.0,
                    width: 36.0,
                    image: AssetImage('assets/images/profileImage.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Arpan Garg',
                          style: Theme.of(context).textTheme.body2 ,
                        ),
                        Text(
                          'Lead GDG ND',
                          style: Theme.of(context).textTheme.body2 ,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
