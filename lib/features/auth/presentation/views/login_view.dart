import 'package:flutter/material.dart';
import 'package:food_delivery/features/auth/presentation/widgets/base_auth_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  AuthBaseLayout(isSignUp: false);
  }
}
