import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/sources/color_sources.dart';

class Page2Tab1 extends StatefulWidget {
  Color c;

  Page2Tab1(this.c);

  @override
  _Page2Tab1State createState() => _Page2Tab1State();
}

class _Page2Tab1State extends State<Page2Tab1> {
  @override
  Widget build(BuildContext context) {
    double mainHeight = MediaQuery.of(context).size.height * 0.2;
    final Sources colorBloc = Provider.of<Sources>(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          colorBloc.setColor(widget.c);
        });
      },
      child: Container(
        padding: EdgeInsets.only(top: mainHeight * 0.5),
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: widget.c,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFd7dcf8).withOpacity(0.5),
              spreadRadius: 8,
              blurRadius: 10,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left : 25),
            width: MediaQuery.of(context).size.width * 0.4 - 1,
            child: Text('Arts And Humanities', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800)),
          ),
        ),
      ),
    );
  }
}
