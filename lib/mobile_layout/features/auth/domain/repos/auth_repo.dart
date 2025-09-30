import 'package:dartz/dartz.dart';
import 'package:food_app/core/errors/failures.dart';
import 'package:food_app/mobile_layout/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure,UserEntity>> createUserNameAndPassword(String email,String password,String name);
}