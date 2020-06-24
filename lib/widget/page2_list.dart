import 'package:flutter/material.dart';
import 'package:ui_practice/widget/page2_item.dart';

class Page2List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Page2Item();
              }),
        );
  }
}