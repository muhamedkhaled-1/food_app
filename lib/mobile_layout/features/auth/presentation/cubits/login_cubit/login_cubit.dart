import 'package:bloc/bloc.dart';
import 'package:food_app/mobile_layout/features/auth/domain/entities/user_entity.dart';
import 'package:food_app/mobile_layout/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

  final AuthRepo authRepo;

  Future<void> LoginUser(String email,String password)async {
    emit(LoginLoading());
    final result =await authRepo.signInMailAndPassword(email, password);
    result.fold((failure) {
      emit(LoginFailure(message: failure.message));
    }, (userEntity){
      emit(LoginSuccess(userEntity:userEntity));
    });
  }
}
