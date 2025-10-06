import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../cubits/login_cubit/login_cubit.dart';
import 'login_page_view_body.dart';

class LoginBlocConsumer extends StatelessWidget {
  const LoginBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess){
        }
        if(state is LoginFailure){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is LoginLoading?true:false,
            child: LoginViewBody());
      },
    );
  }
}
