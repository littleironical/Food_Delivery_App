import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
Contents({this.img, this.name, this.price});
  final img;
  final name;
  final price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          
        ],
      ),
    );
  }
}