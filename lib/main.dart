import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/app/app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: FoodNinja(),
    ),
  );
}
