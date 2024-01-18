// lib/state/app_state.dart
import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  double _accountBalance = 0.0;

  double get accountBalance => _accountBalance;

  set accountBalance(double value) {
    _accountBalance = value;
    notifyListeners();
  }
}
