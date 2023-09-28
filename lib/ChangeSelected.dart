import 'package:flutter/material.dart';

class ChangeSelected extends ChangeNotifier{

  String selection= "";

  void changeSelect(String newSelection){
    selection = newSelection;
    notifyListeners();
  }
}