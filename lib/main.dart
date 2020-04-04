import 'package:flutter/material.dart';

import 'content.dart';

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
double width, height;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;

    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 40.0),
          color: Color(0xFF21BFBD),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
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
              new Row(
                children: <Widget>[
                  Text('     Healthy',
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
              SizedBox(height: 60.0,),

              new Expanded(
                child: new AnimatedContainer(
                  duration: Duration(hours: 1),
                  alignment: Alignment.bottomCenter,
                  height: height + 185.0,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0))
                  ),
                  child: ListView(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 20.0),),
                      contents('assets/plate2.png', 'Salmon Bowl','\$24.00'),
                      contents('assets/plate1.png', 'Spring Bowl','\$22.00'),
                      contents('assets/plate6.png', 'Avocado Bowl','\$26.00'),
                      contents('assets/plate5.png', 'Berry Bowl','\$19.00'),
                       SizedBox(height: 50.0,),
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
                             child: Icon(Icons.shopping_basket,
                               color: Colors.black,
                             ),
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
                                  fontSize: 15.0,
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