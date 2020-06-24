import 'package:flutter/material.dart';
import 'package:ui_practice/widget/page1_header.dart';
import 'package:ui_practice/widget/page1_list_item.dart';

class Page1 extends StatelessWidget {

  final colorSelect =  [
    Colors.blueAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.greenAccent,



  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Page1Header1(),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('STUDYING' ,style: TextStyle(fontSize: 22,color: Colors.grey[800],fontWeight: FontWeight.w800),),
                      padding: EdgeInsets.only(left: 30,top: 45,bottom: 15),
                    ),
                    Container(
                      height: (MediaQuery.of(context).size.height * 0.5) * 0.95,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return index == 0
                                ? Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Page1ListItem(color: colorSelect[index],subName: 'Biology',),
                                  )
                                : Page1ListItem(color: colorSelect[index],subName: 'Biology',);
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
