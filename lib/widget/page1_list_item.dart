import 'package:flutter/material.dart';

class Page1ListItem extends StatelessWidget {
  Color color;
  String subName;

  Page1ListItem({this.color, this.subName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFd7dcf8).withOpacity(0.5),
            spreadRadius: 8,
            blurRadius: 10,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.72,
      child: Column(
        children: <Widget>[
          Container(
            height: ((MediaQuery.of(context).size.height * 0.5) * 0.8) * 0.38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: color,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: ((MediaQuery.of(context).size.height * 0.5) * 0.8) * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    subName + ' Basics',
                    style: TextStyle(color: color,fontSize: 20,fontWeight: FontWeight.w800),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  
                  

                  Container(
                  child: Text(
                    subName + ' And the',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Scientefic Method',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ),

                ],),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        '4 of 8 Lessons',
                        style: TextStyle(fontSize: 20, color: Colors.grey,fontWeight: FontWeight.w800),
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Container(
                          height: 10,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent[700],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
