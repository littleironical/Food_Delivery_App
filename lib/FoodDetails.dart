import 'package:flutter/material.dart';

class FoodDetails extends StatelessWidget {
FoodDetails({this.title, this.number, this.protein, this.color});
final title;
final number;
final protein;
final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 190.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(30.0),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.black45,
              ),
            ),
            SizedBox(height: 80.0),
            Text(number,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(protein,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}