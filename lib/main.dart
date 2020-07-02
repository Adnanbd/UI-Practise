import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/screens/Movie_App/movie_home.dart';
import 'package:ui_practice/screens/nav_screen.dart';
import 'package:ui_practice/screens/page1.dart';
import 'package:ui_practice/sources/color_sources.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Sources>.value(value: Sources()),
      ],

          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
         
          primarySwatch: Colors.blue,
          fontFamily: 'Fiendstar',
       
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MovieHome(),
        
      ),
    );
  }
}
