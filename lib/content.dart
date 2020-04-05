import 'package:flutter/material.dart';
import 'package:ui_challenge/DetailsPage.dart';

Widget contents(String img, String name, String price){
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
              SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(name,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  SizedBox(height: 5.0,),
                  Text(price,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
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
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new DetailsPage() ));
          },
        ),
      ],
    ),
  );
}