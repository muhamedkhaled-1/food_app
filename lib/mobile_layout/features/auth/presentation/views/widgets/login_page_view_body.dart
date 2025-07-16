import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_container.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_header.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/container_custom_padding.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/layout_text_form_field.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/remember_me_list_tile.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/scrollable_widget.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/social_auth.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/custom_button.dart';
import 'package:food_app/utils/text_styles.dart';

class LoginPageViewBody extends StatelessWidget {
  const LoginPageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollableWidget(
      child: Column(
      children: [
        AuthHeader(title: 'Log In', subTitle: 'Please sign in to your existing account'),
        AuthContainer(
          child: ContainerCustomPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LayoutTextFormField(
                  hintText: 'example@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  headerText: 'Email',
                ),
                SizedBox(
                  height: 24,
                ),
                LayoutTextFormField(
                  hintText: '* * * * * * * * * *',
                  keyboardType: TextInputType.visiblePassword,
                  headerText: 'Password',
                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,color: Color(0xffB4B9CA),)),
                ),
                // SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: RememberMeListTile()),
                    Text('Forgot Password',style: AppTextStyles.styleRegular16.copyWith(color: KprimaryColor),)
                  ],
                ),
                SizedBox(height: 29,),
                SizedBox(
                    width: double.infinity,
                    child: CustomButton(onTap: (){}, text: 'Log In')),
                SizedBox(height:25 ,),
                DontHaveAccount(),
                SizedBox(height: 20,),
                Center(child: Text('Or',style: AppTextStyles.styleRegular16,)),
                SizedBox(height: 15,),
                SocialAuth(),
                SizedBox(height: 20,)
              ],
            ),
          ),
        )
      ],
    ),);
  }
}
