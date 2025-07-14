import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/mobile_layout/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName='splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
