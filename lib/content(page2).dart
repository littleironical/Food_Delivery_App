import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
Contents({this.img, this.name, this.price});
  final img;
  final name;
  final price;

  @override
  Widget build(BuildContext context) {

  // var name1, name2, count=0,i=0;
  
  // String name01(){
  //   for(i=0; i!='\0'; i++){
  //     if(name[i]==' ') break;
  //     else {
  //       count++;
  //       name1[i] = name[i];
  //     }   
  //   }
  //   return name1;
  // }
  // String name02(){
  //   for(i=count+1; i!='\0'; i++){
  //     if(name[i]==' ') break;
  //     else name2[i] = name[i]; 
  //   }
  //   return name2;
  // }

    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 200.0),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Row(
              children: <Widget>[
                new Text('Avocadro',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30.0
                  ),
                ),
                SizedBox(width: 10.0),
                new Text('Bowl',
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.add,
                          color: Colors.white,
                        ), 
                        onPressed: () {},
                      ),
                      Text('2',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.add), 
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 55.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 120.0,
                  height: 190.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xFF7A9BEE),
                  ),
                ), 
                SizedBox(width: 20.0),
                Container(
                  width: 120.0,
                  height: 190.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                ), 
                SizedBox(width: 20.0),
                Container(
                  width: 120.0,
                  height: 190.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                ), 
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