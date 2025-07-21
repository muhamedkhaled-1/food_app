import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/login_page_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName='loginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackColor,
      body: LoginViewBody(),
    );
  }
}
