

import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/features/onboarding/presentation/views/onboard_screen.dart';
import 'package:food_delivery/features/splash/splash.dart';
import 'package:go_router/go_router.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: SplashView.builder,
    
  ),
  GoRoute(
    path: RouteLocation.onboard1,
    parentNavigatorKey: navigationKey,
    builder: (context , state) => const OnboardScreen(), 
  ),
  GoRoute(
    path: RouteLocation.onboard2,
    parentNavigatorKey: navigationKey,
    builder: SplashView.builder,
    
  ),
  GoRoute(
    path: RouteLocation.login,
    parentNavigatorKey: navigationKey,
    builder: SplashView.builder,
    
  ),
  GoRoute(
    path: RouteLocation.signup,
    parentNavigatorKey: navigationKey,
    builder: SplashView.builder,
    
  ),
];
