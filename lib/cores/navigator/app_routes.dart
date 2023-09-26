import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/features/home/presentation/view/home_page.dart';
import 'package:food_delivery/features/home/presentation/widget/home_with_chips.dart';
// import 'package:food_delivery/features/home/presentation/view/home_page.dart';
import 'package:food_delivery/features/onboarding/presentation/views/onboard_screen_1.dart';
import 'package:food_delivery/features/onboarding/presentation/views/onboard_screen_2.dart';
import 'package:food_delivery/features/splash/splash.dart';
import 'package:go_router/go_router.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: RouteLocation.onboard1,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const OnboardScreen1(),
  ),
  GoRoute(
    path: RouteLocation.onboard2,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const OnboardScreen2(),
  ),
  
  GoRoute(
    path: RouteLocation.homechip,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const HomeActionChips(),
  ),
  GoRoute(
    path: RouteLocation.signUp,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const SplashView(),
  ),
];
