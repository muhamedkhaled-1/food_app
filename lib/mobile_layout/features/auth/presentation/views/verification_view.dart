import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});
  static const routeName='verificationView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackColor,
      body: VerificationViewBody(),
    );
  }
}
