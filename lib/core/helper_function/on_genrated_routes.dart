import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/forget_password_view.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/login_view.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/sign_up_view.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/verification_view.dart';
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
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case ForgetPasswordView.routeName:
      return MaterialPageRoute(builder: (context) => const ForgetPasswordView());
    case VerificationView.routeName:
      return MaterialPageRoute(builder: (context) => const VerificationView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}