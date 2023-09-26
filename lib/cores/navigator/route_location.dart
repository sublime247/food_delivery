import 'package:flutter/foundation.dart' show immutable;

@immutable
class RouteLocation {
  const RouteLocation._();

  static String get home => '/home';
  static String get homechip => '/home_chip';
  static String get onboard1 => '/onboard1';
  static String get onboard2 => '/onboard2';
  static String get login => '/login';
  static String get signUp => '/signUp';
}
