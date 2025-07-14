import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/login_page_view.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/on_boarding_view_body2.dart';
import 'package:food_app/responsive_widgets/dashboard_view.dart';

import '../../mobile_layout/features/splash/presentation/views/splash_view.dart';


Route<dynamic>onGenrateRoute(RouteSettings setting){
  switch (setting.name) {
    case DashboardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboardView());
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routNamte:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginPageView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginPageView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}