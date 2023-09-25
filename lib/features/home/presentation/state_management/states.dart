import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class ToggleState extends ChangeNotifier{
  bool _showAllResturant = false;
  bool _showAllMenu = false;  
  bool get showAllResturant => _showAllResturant;
  bool get showAllMenu => _showAllMenu;
  void toggle(){
    _showAllResturant = !_showAllResturant; 
    notifyListeners();
  }
  void toggleMenu(){
    _showAllMenu = !_showAllMenu; 
    notifyListeners();
  }
}

final toggleStateProvider = ChangeNotifierProvider<ToggleState>((ref) => ToggleState());

