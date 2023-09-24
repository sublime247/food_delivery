import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class ToggleState extends ChangeNotifier{
  bool _showAllResturant = false;
  bool get showAllResturant => _showAllResturant;
  void toggle(){
    _showAllResturant = !_showAllResturant;
    notifyListeners();
  }
}

final toggleStateProvider = ChangeNotifierProvider<ToggleState>((ref) => ToggleState());

