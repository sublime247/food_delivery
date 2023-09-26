import 'package:flutter/foundation.dart' show immutable;

@immutable
class RouteLocation {
  const RouteLocation._();

  static String get home => '/home';
  static String get onboard1 => '/onboard1';
  static String get onboard2 => '/onboard2';
  static String get login => '/login';
  static String get signUp => '/signUp';
  static String get inputBio => '/input-bio';
  static String get paymentMethodView => '/payment-method-view';
  static String get uploadPhotoView => '/upload-photo-view';
}
