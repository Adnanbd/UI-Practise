import 'package:flutter/material.dart';

class Page1Header1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Hi, Antonio',
                      style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.grey[900]),
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    
                    child: Text(
                      'What would you like to learn',
                      style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.grey[700]),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                   
                    child: Text(
                      'today? Search below.',
                      style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.grey[700]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 25,left: 30,right: 30,top: 55),
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd7dcf8).withOpacity(0.2),
                          spreadRadius: 10,
                          blurRadius: 10,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 82,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: TextStyle(fontSize: 22),
                              ),
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.indigoAccent[700],
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}