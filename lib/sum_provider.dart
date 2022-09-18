import 'package:flutter/material.dart';

class SumProvider extends ChangeNotifier {

  int _sum = 0;

  void sumNumbers(int a, int b){
   
    _sum = a+b;
    notifyListeners();
  }


  int get sum=> _sum;


  
}