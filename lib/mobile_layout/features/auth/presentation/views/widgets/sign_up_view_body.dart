import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_container.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_header.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/container_custom_padding.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/layout_text_form_field.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/scrollable_widget.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/custom_button.dart';

import '../verification_view.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> formKey=GlobalKey<FormState>();
   AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
   late String email,password,name;
   bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomScrollableWidget(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            AuthHeader(title: 'Sign Up', subTitle: 'Please sign up to get started'),
            AuthContainer(
              child: ContainerCustomPadding(
                child: Column(
                  children: [
                    LayoutTextFormField(
                      onSaved: (value) {
                        name=value!;
                      },
                        hintText: 'John doe',
                        failureValidation: 'Please enter your name',
                        keyboardType: TextInputType.name,
                        headerText: 'Name'),
                    SizedBox(height: 24,),
                    LayoutTextFormField(
                      onSaved: (value) {
                        email=value!;
                      },
                        hintText: 'example@gmail.com',
                        failureValidation: 'Please enter your email',
                        keyboardType: TextInputType.emailAddress,
                        headerText: 'Email'),
                    SizedBox(height: 24,),
                    LayoutTextFormField(
                      obscureText: obscureText,
                      onSaved: (value) {
                        password=value!;
                      },
                        hintText: '* * * * * * * * * *',
                        failureValidation: 'Please enter your password',
                        keyboardType: TextInputType.visiblePassword,
                        headerText: 'Password',
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          obscureText=!obscureText;
                        });
                      }, icon: FaIcon(FontAwesomeIcons.eyeSlash,size: 14,),color: Color(0xffB4B9CA),)),
                    SizedBox(height: 24,),
                    LayoutTextFormField(
                      obscureText: obscureText,
                      hintText: '* * * * * * * * * *',
                      keyboardType: TextInputType.visiblePassword,
                      headerText: 'Re-Type Password',
                      failureValidation: 'your password doesnt match',
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          obscureText=!obscureText;
                        });
                      }, icon:  FaIcon(FontAwesomeIcons.eyeSlash,size: 14,),color: Color(0xffB4B9CA),)),
                    SizedBox(height: 47,),
                    SizedBox(
                        width: double.infinity,
                        child: CustomButton(onTap: (){
                          if(formKey.currentState!.validate()){
                            formKey.currentState!.save();
                            context.read<SignupCubit>().createUserWithEmailAndPassword(email, password, name);
                          }else{
                            setState(() {
                              autovalidateMode=AutovalidateMode.always;
                            });
                          }

                        }, text: 'Sign Up'))

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
