import 'package:flutter/material.dart';

class Page3Body2 extends StatelessWidget {

  var myChildSize = Size.zero;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: 
        (context, index) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Container(height: 40,width: 40, color: Colors.orange,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                Text('Noob',style: TextStyle(fontSize: 25,color: Colors.grey[800]),),
                Text('Completed all level with hight score',style: TextStyle(fontSize: 15,color: Colors.grey[600]),),

              ],),
            ],),
          );
        },),
      height: MediaQuery.of(context).size.height * 0.62,
      width: double.infinity,
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

      ),
      
    );
  }
}