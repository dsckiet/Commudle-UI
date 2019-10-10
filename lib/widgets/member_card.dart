import 'package:flutter/material.dart';

class MemberCard extends StatefulWidget {
  @override
  _MemberCardState createState() => _MemberCardState();
}

class _MemberCardState extends State<MemberCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        color: const Color(0xFFF9F9F9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: CircleAvatar(
                radius: 50.0,
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  child: Image(
                    image: AssetImage('assets/images/profileImage.png'),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 12.0),
              child: Text(
                'Aakash Goel',
                style: Theme.of(context).textTheme.body2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 12.0, left: 4.0, right: 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    radius: 14.0,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('assets/images/twitter.png'),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 14.0,
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      child: Image(
                        image: AssetImage('assets/images/github.png'),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 14.0,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('assets/images/linkedin.png'),
                      ),
                    ),
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
