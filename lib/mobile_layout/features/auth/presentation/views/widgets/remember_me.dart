import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/remember_me_list_tile.dart';

import '../../../../../../constants.dart';
import '../../../../../../utils/text_styles.dart';
import '../forget_password_view.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: RememberMeListTile()),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, ForgetPasswordView.routeName);
          },
          child: Text('Forgot Password',style: AppTextStyles.styleRegular16.copyWith(color: KprimaryColor),),
        )
      ],
    );
  }
}