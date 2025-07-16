import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/sign_up_view.dart';

import '../../../../../../constants.dart';
import '../../../../../../utils/text_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don’t have an account?',style: AppTextStyles.styleRegular16,),
        SizedBox(height: 11,),
        TextButton(
            onPressed: (){
              Navigator.pushNamed(context,SignUpView.routeName);
            },
            child: Text('Sign Up',style: AppTextStyles.styleRegular16.copyWith(color: KprimaryColor),))
      ],
    );
  }
}
