import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_app/core/errors/exeptions.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword({required String email, required String password})async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'The account already exists for that email.');
      }else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'No internet connection. Please check your network.');
      }
      else{
        throw CustomException(message: 'An error occurred. please try again later');
      }
    } catch (e) {
      throw CustomException(message: 'An error occurred. please try again later');
    }
  }
  Future<User> loginWithEmailandPassword({required String email,required String password})async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'Wrong password provided for that user.');
      }else{
        throw CustomException(message: 'An error occurred. please try again later');
      }
    }catch (e) {
      throw CustomException(message: 'An error occurred. please try again later');
    }
  }
}