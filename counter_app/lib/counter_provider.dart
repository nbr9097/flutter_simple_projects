import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  Color _displayColor = Colors.grey;

  int get count => _count;
  Color get displayColor => _displayColor;

  void increment() {
    _count++;
    _updateColor();
    notifyListeners();
  }

  void decrement() {
    _count--;
    _updateColor();
    notifyListeners();
  }

  void reset() {
    _count = 0;
    _updateColor();
    notifyListeners();
  }

  void _updateColor() {
    if (_count < 0) {
      _displayColor = Colors.red;
    } else if (_count == 0) {
      _displayColor = Colors.grey;
    } else {
      _displayColor = Colors.green;
    }
  }
}
