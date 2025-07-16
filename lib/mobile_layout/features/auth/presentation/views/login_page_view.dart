import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/login_page_view_body.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});
  static const routeName='loginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackColor,
      body: LoginPageViewBody(),
    );
  }
}
