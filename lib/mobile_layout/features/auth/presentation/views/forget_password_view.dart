import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static const routeName='forgetPass';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: KbackColor,
      body: ForgetPasswordViewBody(),
    );
  }
}
