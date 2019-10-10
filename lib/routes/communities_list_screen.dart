import 'package:commudle/routes/community_screen.dart';
import 'package:commudle/routes/profile_screen.dart';
import 'package:commudle/widgets/communities_list_card.dart';
import 'package:flutter/material.dart';

class CommunitiesListScreen extends StatefulWidget {
  @override
  _CommunitiesListScreenState createState() => _CommunitiesListScreenState();
}

class _CommunitiesListScreenState extends State<CommunitiesListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return new Future.value(true);
        },
        child: Scaffold(
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
                        'Communities',
                        style: Theme.of(context).textTheme.headline,
                      ),
                      InkWell(
                        child: Icon(
                          const IconData(59389, fontFamily: 'MaterialIcons'),
                          color: const Color(0xFF707070),
                          size: 28.0,
                        ),
                        onTap: (){
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
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CommunityScreen()),
                            );
                          },
                          child: CommunitiesListCard()),
                      CommunitiesListCard(),
                      CommunitiesListCard(),
                      CommunitiesListCard(),
                      CommunitiesListCard(),
                      CommunitiesListCard(),
                      CommunitiesListCard(),
                      CommunitiesListCard(),
                      CommunitiesListCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
