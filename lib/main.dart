import 'package:flutter/material.dart';
import 'package:food_app/responsive_widgets/dashboard_view.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardView(),
    );
  }
}
