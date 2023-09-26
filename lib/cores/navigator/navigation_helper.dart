import 'package:flutter/material.dart';
import 'package:food_delivery/cores/navigator/route_provider.dart';
import 'package:go_router/go_router.dart';

class NavigationHelper {
  NavigationHelper._internal();
  static final NavigationHelper instance = NavigationHelper._internal();

  final BuildContext? context = navigationKey.currentContext;

  Future<dynamic> navigateTo(String routeName, {Object? arguments}) async {
    return context?.push(routeName);
  }
}
