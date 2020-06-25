import 'package:flutter/material.dart';

class Sources extends ChangeNotifier{


  static Color selectedColor = Colors.red;

  int index3 = 0;

  setColor(Color c)
  {
    selectedColor = c;
    notifyListeners();

  }
  Color getColor(){
    return selectedColor;
  }

  setIndex(int c)
  {
    index3 = c;
    notifyListeners();

  }
  int getIndex(){
    return index3;
  }

  static List<Color> colorPool = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.black,
  ];
}
