import 'package:flutter/cupertino.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_container.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_header.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/container_custom_padding.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/layout_text_form_field.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/scrollable_widget.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/custom_button.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollableWidget(
      child: Column(
        children: [
          AuthHeader(
            title: 'Forgot Password',
            subTitle: 'Please enter your email address',
            positionedWidth: 0.24,
          ),
          AuthContainer(
            child: ContainerCustomPadding(
              child: Column(
                children: [
                  LayoutTextFormField(
                    hintText: 'example@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                    headerText: 'Email',
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                      child: CustomButton(onTap: (){}, text: 'Send Code')),
                  SizedBox(height:75 ,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
