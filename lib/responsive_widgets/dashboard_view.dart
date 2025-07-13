import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/responsive_widgets/adaptive_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
      ),
    );
  }
}
