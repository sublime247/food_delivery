import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

final routesProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: RouteLocation.home,
      navigatorKey: navigationKey,
      routes: appRoutes,
    );
  },
);
