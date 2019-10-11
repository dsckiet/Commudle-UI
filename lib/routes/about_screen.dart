import 'package:commudle/routes/profile_screen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                        size: 20.0,
                      ),
                    ),
                    Text(
                      'About',
                      style: Theme.of(context).textTheme.headline,
                    ),
                    InkWell(
                      child: Icon(
                        const IconData(59389, fontFamily: 'MaterialIcons'),
                        color: const Color(0xFF707070),
                        size: 24.0,
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
              Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/temp-wtm.png'),
                    ),
                    Flexible(
                      child: Container(
                        padding:
                        EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Developer student clubs KIET',
                          style: Theme.of(context).textTheme.title,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Text(
                  'GDG New Delhi provides a network for people who are interested in Google\'s open source technologies and also love the spirit of sharing in the field of technology. A group of developers that foster learning of Google’s developer technologies. We organize CodeLabs, tech talks, hackathons, Extended events, devFests, and study jams. The group is free to attend and open to all who are interested in discussing and learning more about software development with tools and technologies from Google or the open-source community. Disclaimer: GDG New Delhi is an independent group; our activities and the opinions expressed here should in no way be linked to Google, the corporation. To learn more about the GDG program, visit https://developers.google.com/groups/',
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
