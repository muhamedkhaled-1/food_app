import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../generated/assets.dart';
import '../../../../../../utils/text_styles.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.title, required this.subTitle});
final String title,subTitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          return Stack(
            children: [
              Positioned(
                child: SvgPicture.asset(Assets.assetsLeftHeader),
                top: 0,
              ),
              Positioned(
                child: SvgPicture.asset(Assets.assetsHeaderRight),
                top: height * 0.05,
                right: width * 0.01,
              ),
              Positioned(
                  left: width * 0.4,
                  top: height * .45,
                  child: Text(
                    title,
                    style: AppTextStyles.styleBold30,
                  )),
              Positioned(
                  left: width * 0.24,
                  top: height * 0.66,
                  child: Text(
                    subTitle,
                    style: AppTextStyles.styleRegular16
                        .copyWith(color: Colors.white),
                  )),
            ],
          );
        },
      ),
    );
  }
}
