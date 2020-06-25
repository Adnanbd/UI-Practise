import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/sources/color_sources.dart';
import 'package:ui_practice/widget/page3body1.dart';
import 'package:ui_practice/widget/page3body2.dart';
import 'package:ui_practice/widget/page3body3.dart';


class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int index = 0;
  bool one = true;
  bool two = false;
  bool three = false;

  List<Widget> pages = [Page3Body1(),Page3Body2(),Page3Body3(),
];

  var myChildSize = Size.zero;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final Sources indexBloc = Provider.of<Sources>(context);
    return SingleChildScrollView(
          child: Container(
            //height: height,
        child: Column(
          children: <Widget>[
            Container(
              height: height * 0.4,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(80)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd7dcf8).withOpacity(0.5),
                          spreadRadius: 6,
                          blurRadius: 7,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: CircleAvatar(

                      radius: 80,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('images/1.jpg'),
                      ),
                    ),
                  ),

                  Container(child: Text('Tony Stark',style: TextStyle(fontSize: 35,color: Colors.grey[800]),),),
                  Container(margin: EdgeInsets.only(top: 5),child: Text('123,873 XP',style: TextStyle(fontSize: 22,color: Colors.grey[600]),),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(),
              child: Container(
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
                  onTap: () {
                    setState(() {
                      one = true;
                      two = false;
                      three = false;
                      indexBloc.setIndex(0);
                    });
                  },
                  child: Container(
                    //padding: EdgeInsets.all(10),
                    child: Text(
                      'BADGES',
                      style:
                          TextStyle(fontSize: one == true ? 20 : 18 , fontWeight: one == true ? FontWeight.w800:FontWeight.normal),
                    ),
                  ),
                ),
                VerticalDivider(),
                GestureDetector(
                  onTap: () {
                     setState(() {
                        one = false;
                      two = true;
                      three = false;
                      indexBloc.setIndex(1);
                    });
                  },
                  child: Container(
                    child: Text(
                      'FRIENDS',
                      style:
                           TextStyle(fontSize: two == true ? 20 : 18 , fontWeight: two == true ? FontWeight.w800:FontWeight.normal),
                    ),
                  ),
                ),
                VerticalDivider(),
                GestureDetector(
                  onTap: () {
                     setState(() { one = false;
                      two = false;
                      three = true;
                      indexBloc.setIndex(2);
                    });
                  },
                  child: Container(
                    child: Text(
                      'SCORES',
                      style:
                           TextStyle(fontSize: three == true ? 20 : 18 , fontWeight: three == true ? FontWeight.w800:FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
          ),
            ),

           pages[indexBloc.getIndex()],

            






            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
