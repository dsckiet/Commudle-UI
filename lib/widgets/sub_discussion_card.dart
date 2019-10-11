import 'package:flutter/material.dart';

class SubDiscussionCard extends StatefulWidget {
  @override
  _SubDiscussionCardState createState() => _SubDiscussionCardState();
}

class _SubDiscussionCardState extends State<SubDiscussionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 60,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          //side: BorderSide(color: Color(0xFF707070), width: 1.0),
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
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Aakanksha Shivani',
                          style: Theme.of(context).textTheme.body2,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '3 days ago',
                          style:  TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF707070),
                      ),
                          textAlign: TextAlign.end,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
