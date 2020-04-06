import 'package:flutter/material.dart';
import 'package:ui_challenge/DetailsPage.dart';

class Contents extends StatelessWidget {
Contents({this.img, this.name1, this.price});
  final img;
  final name1;
  final name2 = 'Bowl';
  final price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                  height: 95.0,
                  width: 95.0
                ),
                SizedBox(width: 14.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(name1+' '+name2,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(height: 5.0,),
                    Text(price,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      )
                    )
                  ]
                ),
              ]
            )
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new DetailsPage(img: img, name1: name1, price: price,) ));
            },
          ),
        ],
      ),
    );
  }
}