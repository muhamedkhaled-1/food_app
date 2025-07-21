import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/core/services/shared_preferences_singleton.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/login_view.dart';

import '../../../../../../utils/text_styles.dart';
import 'custom_button.dart';

class OnBoardingViewItem extends StatelessWidget {
    OnBoardingViewItem({super.key, required this.onTap, required this.title, required this.subtitle, required this.buttonText, required this.image, required this.skipButton, required this.position});
  final void Function() onTap;
  final String title,subtitle,buttonText,image;
  final bool skipButton;
  final double position;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 114,left:67,right: 69 ),
          child: Container(
              height: 292,
              width: MediaQuery.of(context).size.width*.9,
              child: Image.asset(image)),
        ),
        SizedBox(height: 63,),
        Text(
          title,
          style: AppTextStyles.styleExtraBold24,
        ),
        SizedBox(height: 18,),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: Text(
            subtitle,
            style: AppTextStyles.styleRegular16.copyWith(
              color: Color(0xff646982),
            ),
          ),
        ),
        SizedBox(height: 32,),
        DotsIndicator(
          position: position,
          dotsCount: 3,
          decorator: DotsDecorator(activeColor: Colors.deepOrange,color: Color(0xffFFE1CE)),
        ),
        Spacer(),
        CustomButton(
            onTap: onTap,
            text: buttonText),
        SizedBox(height: 16,),
        Visibility(
            visible: skipButton,
            maintainSize: true,
            maintainState: true,
            maintainAnimation: true,
            child: GestureDetector(
                onTap: () {
                  Prefs.setBool(KisOnboardingSeen, true);
                  Navigator.pushReplacementNamed(context, LoginView.routeName);
                },
                child: Text('Skip'))),
        SizedBox(height: 40,)
      ],
    );
  }
}
