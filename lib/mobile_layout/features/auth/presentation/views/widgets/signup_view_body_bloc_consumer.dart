import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../cubits/signup_cubit/signup_cubit.dart';
import '../verification_view.dart';

class signupViewBodyBlocConsumer extends StatelessWidget {
  const signupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if(state is SignupFailure){
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              )
          );
        }
        if(state is SignupSuccess){
          Navigator.pushNamed(context, VerificationView.routeName);
        }

      },
      builder: (context, state){
        return ModalProgressHUD(
            inAsyncCall: state is SignupLoading?true:false,
            child: SignUpViewBody());
      },
    );
  }
}
