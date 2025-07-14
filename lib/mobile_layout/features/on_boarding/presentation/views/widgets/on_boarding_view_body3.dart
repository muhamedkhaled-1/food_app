import 'package:flutter/cupertino.dart';
import 'package:food_app/generated/assets.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/on_boarding_view_item.dart';

class OnBoardingViewBody3 extends StatelessWidget {
  const OnBoardingViewBody3({super.key, required this.position, required this.onTap});
  final double position;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return OnBoardingViewItem(
      position: position,
      skipButton: false,
        onTap: onTap,
        title: 'Free delivery offers',
        subtitle: 'Get all your loved foods in one once place,\n    you just place the order we do the rest',
        buttonText: 'Get Started',
        image: Assets.assetsOnboarding04);
  }
}
