import 'package:commudle/widgets/member_card.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
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
                  "Team",
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Image(
                  image: AssetImage('assets/images/temp-wtm.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Text(
                  'Developers Student Clubs KIET',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Text(
                  'Organizers',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  childAspectRatio: (MediaQuery.of(context).size.width/3.3) / (MediaQuery.of(context).size.height/4.2),
                  shrinkWrap: true,
                  children: <Widget>[
                    MemberCard(),
                    MemberCard(),
                    MemberCard(),
                    MemberCard(),
                    MemberCard(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Text(
                  'Event Managers',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  shrinkWrap: true,
                  childAspectRatio: (MediaQuery.of(context).size.width/3.3) / (MediaQuery.of(context).size.height/4.4),
                  children: <Widget>[
                    MemberCard(),
                    MemberCard(),
                    MemberCard(),
                    MemberCard(),
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