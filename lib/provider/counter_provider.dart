import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int count = 0;

  int get countFunc => count;

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    if (count > 0) {
      count--;
    }
    notifyListeners();
  }
}
