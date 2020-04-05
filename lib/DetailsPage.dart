import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.white,
      ),
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 60.0),
          color: Color(0xFF7A9BEE),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new IconButton(
                      icon: Icon(Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                    ),
                    new Text('Details',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 20.0
                      ),
                    ),
                    new IconButton(
                      icon: Icon(Icons.more_horiz,
                        color: Colors.white,
                        size: 24.0
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}