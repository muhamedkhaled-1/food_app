import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/generated/assets.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/custom_button.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/on_boarding_view_body2.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/on_boarding_view_item.dart';
import 'package:food_app/utils/text_styles.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key, required this.onTap, required this.position});
  final void Function() onTap;
  final double position;

  @override
  Widget build(BuildContext context) {
    return OnBoardingViewItem(
      position: position,
      skipButton: true,
        onTap: onTap,
        title: 'All your favorites',
        subtitle: 'Get all your loved foods in one once place,\n    you just place the order we do the rest',
        buttonText: 'Next',
        image: Assets.assetsOnboarding02);
  }
}
