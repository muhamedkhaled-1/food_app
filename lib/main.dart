import 'package:flutter/material.dart';
import 'package:food_app/core/helper_function/on_genrated_routes.dart';
import 'package:food_app/responsive_widgets/dashboard_view.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     onGenerateRoute: onGenrateRoute,
      initialRoute: DashboardView.routeName,
    );
  }
}
