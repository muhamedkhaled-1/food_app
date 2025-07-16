import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/mobile_layout/mobile_layout.dart';
import 'package:food_app/responsive_widgets/adaptive_layout.dart';


class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
static const routeName='dashboardview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => MobileLayout(),
          tabletLayout: (context) => MobileLayout(),
      ),
    );
  }
}
