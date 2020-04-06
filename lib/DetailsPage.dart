import 'package:flutter/material.dart';

import 'content(page2).dart';

class DetailsPage extends StatelessWidget {
DetailsPage({this.img, this.name, this.price});
  final img;
  final name;
  final price;

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
                        fontSize: 22.0
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
              ),
              SizedBox(height: 70.0),

              new Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0))
                  ),
                  child: new Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.bottomCenter,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Positioned(
                        bottom: 550.0,
                        child: Image(
                          image: AssetImage(img),
                          fit: BoxFit.cover,
                          height: 250.0,
                          width: 250.0
                        ),
                      ),
                      Contents(img: img, name: name, price: price),
                    ],
                  ),
                ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}