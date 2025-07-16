import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../generated/assets.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.assetsFacebookLogo),
        SizedBox(width: 30,),
        SvgPicture.asset(Assets.assetsTwitterLogo),
        SizedBox(width: 30,),
        SvgPicture.asset(Assets.assetsAppleeLogo)
      ],
    );
  }
}
