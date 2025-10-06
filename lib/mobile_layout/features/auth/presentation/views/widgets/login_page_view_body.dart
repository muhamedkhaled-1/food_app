import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/forget_password_view.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/verification_view.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_container.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/auth_header.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/container_custom_padding.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/layout_text_form_field.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/remember_me.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/remember_me_list_tile.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/scrollable_widget.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/social_auth.dart';
import 'package:food_app/mobile_layout/features/on_boarding/presentation/views/widgets/custom_button.dart';
import 'package:food_app/utils/text_styles.dart';

class LoginViewBody extends StatefulWidget {
   LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
GlobalKey<FormState> formKey=GlobalKey();
AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
late String email,password;
bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return CustomScrollableWidget(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
        children: [
          AuthHeader(title: 'Log In', subTitle: 'Please sign in to your existing account'),
          AuthContainer(
            child: ContainerCustomPadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LayoutTextFormField(
                    onSaved: (value){
                      email=value!;
                    },
                    hintText: 'example@gmail.com',
                    failureValidation: 'Please enter your email',
                    keyboardType: TextInputType.emailAddress,
                    headerText: 'Email',
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  LayoutTextFormField(
                    obscureText:obscureText ,
                    onSaved: (value){
                      password=value!;
                    },
                    hintText: '* * * * * * * * * *',
                    keyboardType: TextInputType.visiblePassword,
                    failureValidation: 'Please enter your password',
                    headerText: 'Password',
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        obscureText=!obscureText;
                      });
                    }, icon: Icon(Icons.remove_red_eye,color: Color(0xffB4B9CA),)),
                  ),
                  // SizedBox(height: 24,),
                  RememberMe(),
                  SizedBox(height: 29,),
                  SizedBox(
                      width: double.infinity,
                      child: CustomButton(onTap: (){
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          context.read<LoginCubit>().LoginUser(email, password);
                        }else{
                          autovalidateMode=AutovalidateMode.always;
                          setState(() {
                          });
                        }


                      }, text: 'Log In')),
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
            ),
      ),);
  }
}


