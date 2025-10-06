import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/core/services/get_it_service.dart';
import 'package:food_app/mobile_layout/features/auth/data/repos/auth_repo_impl.dart';
import 'package:food_app/mobile_layout/features/auth/domain/repos/auth_repo.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = 'signUp';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt.get<AuthRepoImpl>()),
      child: Scaffold(
        backgroundColor: KbackColor,
        body: signupViewBodyBlocConsumer(),
      ),
    );
  }
}

