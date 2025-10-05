import 'package:food_app/core/services/firebase_auth_services.dart';
import 'package:food_app/mobile_layout/features/auth/data/repos/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGeIit() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(
      firebaseAuthServices: getIt<FirebaseAuthServices>()));


}