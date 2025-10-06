import 'package:dartz/dartz.dart';
import 'package:food_app/core/errors/exeptions.dart';
import 'package:food_app/core/errors/failures.dart';
import 'package:food_app/core/services/firebase_auth_services.dart';
import 'package:food_app/mobile_layout/features/auth/data/model/user_model.dart';
import 'package:food_app/mobile_layout/features/auth/domain/entities/user_entity.dart';
import 'package:food_app/mobile_layout/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  final FirebaseAuthServices firebaseAuthServices;
  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserNameAndPassword(String email, String password,String name) async{
    try {
      var user= await firebaseAuthServices.createUserWithEmailAndPassword(email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    }catch(e){
      return left(
          ServerFailure('theres error occurred'),);
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInMailAndPassword(String email, String password)async {
  var user= await firebaseAuthServices.loginWithEmailandPassword(email: email, password: password);
   try {
     return right(UserModel.fromFirebaseUser(user));
   } on CustomException catch (e) {
     return left(ServerFailure(e.message));
   }catch(e){
     return left(ServerFailure('theres an error try again'));
   }
  }
}