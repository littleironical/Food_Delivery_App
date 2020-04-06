import 'package:flutter/material.dart';

import 'content(page1).dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.white,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 70.0),
          color: Color(0xFF21BFBD),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Icon(Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Icon(Icons.tune,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        SizedBox(width: 55.0),
                        new Icon(Icons.crop_free,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 60.0,),

              //IN THIS CASE I'M NOT ABLE TO DO THE PROPER ALIGNMENT

              // new RichText(
              //     textAlign: TextAlign.start,
              //     text: TextSpan(
              //       children: <TextSpan>[
              //         TextSpan(text: "Healthy ",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontFamily: 'Montserrat',
              //             fontSize: 32.0,
              //             fontWeight: FontWeight.bold,
              //           )
              //         ),
              //         TextSpan(text: "Food",
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontFamily: 'Montserrat',
              //             fontSize: 32.0,
              //             fontWeight: FontWeight.w300
              //           )
              //         )
              //       ]
              //     ),
              //   ),

              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: new Row(
                  children: <Widget>[
                    Text('Healthy',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0
                      )
                    ),
                    SizedBox(width: 10.0),
                    Text('Food',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 30.0
                      )
                    )
                  ],
                ),
              ),
              SizedBox(height: 60.0,),

              new Expanded(
                child: new AnimatedContainer(
                  duration: Duration(hours: 1),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0))
                  ),
                  child: ListView(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10.0),),
                      Contents(img: 'assets/plate2.png', name: 'Salmon Bowl', price: '\$24.00'),
                      Contents(img: 'assets/plate1.png', name: 'Spring Bowl', price: '\$22.00'),
                      Contents(img: 'assets/plate6.png', name: 'Avocado Bowl', price:'\$26.00'),
                      Contents(img: 'assets/plate5.png', name: 'Berry Bowl', price: '\$19.00'),
                      SizedBox(height: 60.0,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Icon(Icons.search,
                              color: Colors.black,
                            ),
                          ), 
                          SizedBox(width: 10.0),

                          Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Center(
                              child: Stack(fit: StackFit.expand,
                                children: <Widget>[
                                  Icon(Icons.shopping_basket,
                                    color: Colors.black,
                                  ),
                                  Positioned(
                                    child: Text('2',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    left: 45.0,
                                    bottom: 42.0,
                                  )
                                ],
                              ),
                            )
                          ), 
                          SizedBox(width: 10.0),    

                          Container(
                            width: 180.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.black
                            ),
                            child: Center(
                              child: Text('Checkout',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                 fontFamily: 'Montserrat',
                                 color: Colors.white,
                                 fontSize: 18.0,
                                )
                              ),
                            )
                          ) 
                        ],
                      ),
                    ], 
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}