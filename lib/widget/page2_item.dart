import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/sources/color_sources.dart';

class Page2Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Sources colorBloc = Provider.of<Sources>(context);
    return Container(
      margin: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: colorBloc.getColor(),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFd7dcf8).withOpacity(0.5),
            spreadRadius: 8,
            blurRadius: 10,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
