import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/core/services/get_it_service.dart';
import 'package:food_app/mobile_layout/features/auth/data/repos/auth_repo_impl.dart';
import 'package:food_app/mobile_layout/features/auth/domain/repos/auth_repo.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/login_bloc_consumer.dart';
import 'package:food_app/mobile_layout/features/auth/presentation/views/widgets/login_page_view_body.dart';
import 'package:get_it/get_it.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'loginPage';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt.get<AuthRepoImpl>()),
      child: Scaffold(
        backgroundColor: KbackColor,
        body: LoginBlocConsumer(),
      ),
    );
  }
}

