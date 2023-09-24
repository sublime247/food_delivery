import 'package:flutter/material.dart';
import 'package:food_delivery/features/home/presentation/widget/homeTabs/home.dart';

abstract class HomeTabs {
  static List<Widget> homeWidget = [
    HomeTab(),
    Scaffold(),
    Scaffold(),
    Scaffold(),

  ];
}
