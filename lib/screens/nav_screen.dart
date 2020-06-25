import 'package:flutter/material.dart';
import 'package:ui_practice/screens/page1.dart';
import 'package:ui_practice/screens/page2.dart';
import 'package:ui_practice/screens/page3.dart';
import 'package:ui_practice/widget/nav.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _index = 0;

  final pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  Widget get myBottomNavigationBar {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFd7dcf8)..withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: Container(
          height: 100,
          child: BottomNavigationBar(
            iconSize: 35,
            
              onTap: (value) {
                print(value);
                setState(() {
                  _index = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.indigo,
              currentIndex: _index,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home',style: TextStyle(fontSize: 18),),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  title: Text('Courses',style: TextStyle(fontSize: 18),),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile',style: TextStyle(fontSize: 18),),
                ),
              ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3f5f9),
      body: Stack(
        children: <Widget>[
          pages[_index],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: myBottomNavigationBar,
          ),
        ],
      ),
    );
  }
}
