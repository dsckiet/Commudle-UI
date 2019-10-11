import 'package:flutter/material.dart';

class DiscussionCard extends StatefulWidget {
  @override
  _DiscussionCardState createState() => _DiscussionCardState();
}

class _DiscussionCardState extends State<DiscussionCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        //side: BorderSide(color: Color(0xFF707070), width: 1.0),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 12, bottom: 12, left: 4, right: 8),
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
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Aakanksha Shivani',
                        style: Theme.of(context).textTheme.body2,
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Text(
                        '3 days ago',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF707070),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Can we integrate hardware with flutter app in this hackathon',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF707070),
                    ),
                    textAlign: TextAlign.justify,
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
