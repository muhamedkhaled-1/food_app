import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_container.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_header.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/container_custom_padding.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/custom_timer_count_down.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/custom_verification_text_field.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/one_digit_input.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/custom_button.dart';
import 'package:food_app/utils/text_styles.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthHeader(title: 'Verification', subTitle: 'We have sent a code to your email',positionedWidth: .34,verificationSubTitle: 'example@gmail.com',),
        AuthContainer(
          child: ContainerCustomPadding(
            child: Column(
              children: [
                CustomTimerCountDown(),
                SizedBox(height: 8.5,),
                Row(
                  children: [
                   Expanded(child: CustomVerificationTextField()),
                    SizedBox(width:26 ,),
                    Expanded(child: CustomVerificationTextField()),
                    SizedBox(width:26 ,),
                    Expanded(child: CustomVerificationTextField()),
                    SizedBox(width:26 ,),
                    Expanded(child: CustomVerificationTextField()),
                    SizedBox(width:26 ,),

                  ],
                ),
                SizedBox(height: 30,),
                SizedBox(
                    width: double.infinity,
                    child: CustomButton(onTap: (){}, text: 'Verify'))
              ],
            ),
          ),
        )
      ],
    );
  }


}
