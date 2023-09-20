import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/features/splash/splash.dart';
import 'package:go_router/go_router.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: SplashView.builder,
  ),
];
