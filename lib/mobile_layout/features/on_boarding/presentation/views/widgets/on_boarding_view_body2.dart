import 'package:flutter/cupertino.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/on_boarding_view_item.dart';

import '../../../../../../generated/assets.dart';

class OnBoardingViewBody2 extends StatelessWidget {
  const OnBoardingViewBody2({super.key, required this.onTap, required this.position});
  final void Function() onTap;
  final double position;

  @override
  Widget build(BuildContext context) {
    return OnBoardingViewItem(
      position:position,
      skipButton: true,
        onTap: onTap,
        title: 'Order from chosen chef',
        subtitle: 'Get all your loved foods in one once place,\n    you just place the order we do the rest',
        buttonText: 'Next',
        image: Assets.assetsOnboarding03);
  }
}
