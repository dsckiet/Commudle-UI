import 'package:flutter/material.dart';

class CommunitiesListCard extends StatefulWidget {
  @override
  _CommunitiesListCardState createState() => _CommunitiesListCardState();
}

class _CommunitiesListCardState extends State<CommunitiesListCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      color: const Color(0xFFF9F9F9),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image(
                  height: 40.0,
                  width: 40.0,
                  image: AssetImage('assets/images/temp-wtm.png'),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'WTM BVP',
                    style: Theme.of(context).textTheme.title,
                  ),
                )
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        const IconData(
                            58900, fontFamily: 'MaterialIcons'),
                        color: const Color(0xFF707070),
                      ),
                      Text(
                        'Events Count: 8',
                        style: Theme.of(context).textTheme.body1,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        const IconData(59603,
                            fontFamily: 'MaterialIcons'),
                        color: const Color(0xFF707070),
                      ),
                      Text(
                        'Members: 5',
                        style: Theme.of(context).textTheme.body1,
                      ),
                    ],
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
