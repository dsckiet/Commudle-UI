import 'package:flutter/material.dart';

class NextEventCard extends StatefulWidget {
  @override
  _NextEventCardState createState() => _NextEventCardState();
}

class _NextEventCardState extends State<NextEventCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Image(
              image: AssetImage('assets/images/eventImageSquare.png'),
              width: MediaQuery.of(context).size.width * 0.25,
            ),
          ),
          SizedBox(width: 16,),
          // Container(
          //   padding: EdgeInsets.only(left: 16.0),
            // height: 100,
           // child: 
            Flexible(
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "DSC KIET",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF707070)),
                  ),
                  Text(
                    '''DEV iO - Kickstart to Developer Career''',
                    style: Theme.of(context).textTheme.body1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Sept 5, 10:00 AM - KIET Gzb",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF707070)),
                    ),
                  )
                ],
              ),
            ),
        //  ),
        ],
      ),
      // ),
    );
  }
}
