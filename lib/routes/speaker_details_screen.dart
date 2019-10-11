import 'package:commudle/routes/profile_screen.dart';
import 'package:commudle/widgets/speaker_detail_card.dart';
import 'package:flutter/material.dart';

class SpeakerDetailsScreen extends StatefulWidget {
  @override
  _SpeakerDetailsScreenState createState() => _SpeakerDetailsScreenState();
}

class _SpeakerDetailsScreenState extends State<SpeakerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 28.0),
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
                      'Speaker Details',
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
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  SpeakerDetailCard(),
                  SpeakerDetailCard(),
                  SpeakerDetailCard(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
