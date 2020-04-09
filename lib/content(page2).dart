import 'package:flutter/material.dart';
import 'package:ui_challenge/FoodDetails.dart';

class Contents extends StatelessWidget {
Contents({this.img, this.name1, this.price});
  final img;
  final name1;
  final name2 = 'Bowl';
  final price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 200.0),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Row(
              children: <Widget>[
                new Text(name1,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30.0
                  ),
                ),
                SizedBox(width: 10.0),
                new Text(name2,
                  style: TextStyle(
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.w300,
                     color: Colors.black,
                     fontSize: 30.0
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(price,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25.0,
                    color: Colors.grey
                  )
                ),
                Container(height: 50.0, color: Colors.grey, width: 1.0),
                Container(
                  height: 50.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF7A9BEE),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove,
                          color: Colors.white,
                        ), 
                        onPressed: () {},
                      ),
                      SizedBox(width: 8.0),

                      Text('2',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 20.0),

                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Icon(Icons.add,
                            color: Color(0xFF7A9BEE),
                            size: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 55.0),

          Container(
            height: 190.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FoodDetails(title: 'WEIGHT',number: '300',protein: 'G', color: Color(0xFF7A9BEE),),
                FoodDetails(title: 'CALORIES', number: '267', protein: 'CAL', color: Colors.white,),
                FoodDetails(title: 'VITAMINS', number: 'A, B6', protein: 'VIT', color: Colors.white,),
                FoodDetails(title: 'AVAIL', number: 'NO', protein: 'AV', color: Colors.white,),
              ],
            ),
          ),
          SizedBox(height: 55.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              width: 500.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  style: BorderStyle.solid,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)
                ),
              ),
              child: Center(
                child: Text(price,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
          ), 
        ],
      ),
    );
  }
}