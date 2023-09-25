import 'package:flutter/material.dart';
import 'package:food_delivery/features/auth/presentation/widgets/base_auth_layout.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBaseLayout(
      isSignUp: true,
    );
  }
}
