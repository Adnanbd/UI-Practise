import 'package:flutter/material.dart';
import 'package:ui_practice/sources/color_sources.dart';
import 'package:ui_practice/widget/page2_horizontal_tab.dart';
import 'package:ui_practice/widget/page2_list.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {


  @override
  Widget build(BuildContext context) {
    double mainHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
          child: Container(
          child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: double.infinity,
            margin: EdgeInsets.only(left: 30, bottom: 20, right: 30, top: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      'ALL',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                VerticalDivider(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      'STUDYING',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                VerticalDivider(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      'SAVED',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: mainHeight * 0.2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Page2Tab1(Sources.colorPool[index]);
                }),
          ),
          Page2List(),
          
              SizedBox(
                height: 100,
              ),

        ],
      )),
    );
  }
}
