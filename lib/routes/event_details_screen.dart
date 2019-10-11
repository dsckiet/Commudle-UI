import 'package:commudle/routes/profile_screen.dart';
import 'package:commudle/routes/schedule_page.dart';
import 'package:commudle/routes/speaker_details_screen.dart';
import 'package:commudle/widgets/member_card.dart';
import 'package:flutter/material.dart';

import 'discussion_screen.dart';

class EventDetailsScreen extends StatefulWidget {
  @override
  _EventDetailsScreenState createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  Widget collabCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 48.0,
          width: 48.0,
          padding: EdgeInsets.only(
            left: 20.0,
          ),
          child: Image(
            image: AssetImage('assets/images/temp-wtm.png'),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Text(
            'Developers Student Clubs KIET',
            style: Theme.of(context).textTheme.body2,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  left: 16.0, top: 48.0, bottom: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      IconData(58848,
                          fontFamily: 'MaterialIcons',
                          matchTextDirection: true),
                      color: const Color(0xFF707070),
                    ),
                  ),
                  Text(
                    'Event Details',
                    style: Theme.of(context).textTheme.headline,
                  ),
                  InkWell(
                    child: Icon(
                      const IconData(59389, fontFamily: 'MaterialIcons'),
                      color: const Color(0xFF707070),
                      size: 28.0,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()),
                      );
                    },
                  ),
                ],
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
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Text(
                'Developers Student Clubs KIET',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Container(
              height: 180.0,
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/eventImage.png'),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xCC000000),
                          const Color(0x80545454)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Dev iO\'19',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 36.0,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF4285F4)),
                        ),
                        Text(
                          'Sunday, 29-sept-2019',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '09:00AM To 04:30PM',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                            color: const Color(0xCC000000),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Text(
                'In collaboration with',
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
                children: <Widget>[
                  collabCard(),
                  collabCard(),
                  collabCard(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0, left: 20.0),
              child: Text(
                'About',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0, left: 20.0),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: Theme.of(context).textTheme.body1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Text(
                      'Speakers',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF444444),
                      ),
                    ),
                    color: Color(0xFF707070),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SpeakerDetailsScreen()),
                      );
                    },
                  ),
                  OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Text(
                      'Schedule',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF444444),
                      ),
                    ),
                    color: Color(0xFF707070),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SchedulePage()),
                      );
                    },
                  ),
                  OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Text(
                      'Disussion',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF444444),
                      ),
                    ),
                    color: Color(0xFF707070),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DiscussionPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Volunteers',
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
                childAspectRatio: (MediaQuery.of(context).size.width / 3.3) /
                    (MediaQuery.of(context).size.height / 4.2),
                shrinkWrap: true,
                children: <Widget>[
                  MemberCard(),
                  MemberCard(),
                  MemberCard(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: Colors.white),
                  ),
                ),
                color: const Color(0xFF4285F4),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
