import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_container.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_header.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/container_custom_padding.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/layout_text_form_field.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/scrollable_widget.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/custom_button.dart';

import '../verification_view.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollableWidget(
      child: Column(
        children: [
          AuthHeader(title: 'Sign Up', subTitle: 'Please sign up to get started'),
          AuthContainer(
            child: ContainerCustomPadding(
              child: Column(
                children: [
                  LayoutTextFormField(
                      hintText: 'John doe',
                      keyboardType: TextInputType.name,
                      headerText: 'Name'),
                  SizedBox(height: 24,),
                  LayoutTextFormField(
                      hintText: 'example@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                      headerText: 'Email'),
                  SizedBox(height: 24,),
                  LayoutTextFormField(
                      hintText: '* * * * * * * * * *',
                      keyboardType: TextInputType.visiblePassword,
                      headerText: 'Password',
                    suffixIcon: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.eyeSlash,size: 14,),color: Color(0xffB4B9CA),)),
                  SizedBox(height: 24,),
                  LayoutTextFormField(
                    hintText: '* * * * * * * * * *',
                    keyboardType: TextInputType.visiblePassword,
                    headerText: 'Re-Type Password',
                    suffixIcon: IconButton(onPressed: (){}, icon:  FaIcon(FontAwesomeIcons.eyeSlash,size: 14,),color: Color(0xffB4B9CA),)),
                  SizedBox(height: 47,),
                  SizedBox(
                      width: double.infinity,
                      child: CustomButton(onTap: (){
                        Navigator.pushNamed(context, VerificationView.routeName);
                      }, text: 'Sign Up'))

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
