import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/features/auth/presentation/views/login_view.dart';
import 'package:food_delivery/features/auth/presentation/views/sign_up_view.dart';
import 'package:food_delivery/features/onboarding/presentation/views/onboard_screen_1.dart';
import 'package:food_delivery/features/onboarding/presentation/views/onboard_screen_2.dart';
import 'package:food_delivery/features/splash/splash.dart';
import 'package:food_delivery/features/user_input/presentation/views/input_bio_view.dart';
import 'package:food_delivery/features/user_input/presentation/views/payment_method_input_view.dart';
import 'package:food_delivery/features/user_input/presentation/views/upload_photo_view.dart';
import 'package:go_router/go_router.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const SplashView(),
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
    path: RouteLocation.login,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const LoginView(),
  ),
  GoRoute(
    path: RouteLocation.signUp,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const SignUpView(),
  ),
  GoRoute(
    path: RouteLocation.inputBio,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const InputBioView(),
  ),
  GoRoute(
    path: RouteLocation.paymentMethodView,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => PaymentMethodView(),
  ),
  GoRoute(
    path: RouteLocation.uploadPhotoView,
    parentNavigatorKey: navigationKey,
    builder: (context, state) => const UploadPhotoView(),
  ),
];
