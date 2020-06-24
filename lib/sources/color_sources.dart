import 'package:flutter/material.dart';

class Sources extends ChangeNotifier{


  static Color selectedColor = Colors.red;

  setColor(Color c)
  {
    selectedColor = c;
    notifyListeners();

  }
  Color getColor(){
    return selectedColor;
  }

  static List<Color> colorPool = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.black,
  ];
}
