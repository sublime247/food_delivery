
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/scaffold_widget.dart';
import 'package:go_router/go_router.dart';

class OnboardScreen extends ConsumerStatefulWidget {
  //  static OnboardScreen builder(
  //   BuildContext context,
  //   GoRouterState state,
  //   WidgetRef ref,
  // ) =>
  //     const OnboardScreen();
  const OnboardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends ConsumerState<OnboardScreen> {

  @override
  Widget build(BuildContext context) {
    return  const ScaffoldWidget(body: 
     Placeholder()

    , useSingleScroll: false);
  }
}