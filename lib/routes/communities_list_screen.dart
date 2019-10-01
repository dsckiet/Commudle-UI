import 'package:commudle/widgets/communities_list_card.dart';
import 'package:flutter/material.dart';

class CommunitiesListScreen extends StatefulWidget {
  @override
  _CommunitiesListScreenState createState() => _CommunitiesListScreenState();
}

class _CommunitiesListScreenState extends State<CommunitiesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 48.0),
              child: Text(
                "Communities",
                style: Theme.of(context).textTheme.headline,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  CommunitiesListCard(),
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
    );
  }
}
