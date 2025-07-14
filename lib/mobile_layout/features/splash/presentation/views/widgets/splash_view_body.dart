import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/on_boarding_view.dart';

import '../../../../../../generated/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SvgPicture.asset(Assets.assetsSplashHeader),
        ),
        Center(child: SvgPicture.asset(Assets.assetsLogo)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.assetsSplashBottom),
          ],
        )
      ],
    );
  }

  void excuteNavigation() {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, OnBoardingView.routNamte);
    });
  }
}
