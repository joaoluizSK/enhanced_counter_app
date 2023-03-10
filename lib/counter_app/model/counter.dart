import 'dart:collection';

import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _counter;
  List<int> _history;

  Counter()
      : _counter = 0,
        _history = [];

  int get counter => _counter;

  List<int> get history => UnmodifiableListView<int>(_history);

  void increase() {
    _counter++;
    _history.add(_counter);

    notifyListeners();
  }

  void decrease() {
    _counter--;

    notifyListeners();
  }
}
