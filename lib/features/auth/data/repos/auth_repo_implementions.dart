import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fruit_hup_store/core/errors/custome%20_exception.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/core/service/auth_service.dart';
import 'package:fruit_hup_store/features/auth/data/models/user_model.dart';
import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';
import 'package:fruit_hup_store/features/auth/domain/repoes/auth_repo.dart';

class AuthRepoImplementions implements AuthRepo {
  AuthService authService;

  AuthRepoImplementions({required this.authService});
  @override
  Future<Either<failer, Userentitie>> createuserwithemailanpassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await authService.createUserWiheEmailAndPassword(
        email: email,
        password: password,
      );

      return right(UserModel.fromFirebaseUser(user));
    } on CustomeException catch (e) {
      return left(serverfailererror(e.massage));
    } catch (e) {
      log("exception in createuserwithemailanpassword : ${e.toString()} ");
      return left(serverfailererror(e.toString()));
    }
  }

  @override
  Future<Either<failer, Userentitie>> signinuserwithanemailandpassword(
    String email,
    String password,
  ) async {
    try {
      final user = await authService.signinuserwithanemailandpassword(
        email: email,
        password: password,
      );

      return right(UserModel.fromFirebaseUser(user));
    } on CustomeException catch (e) {
      return left(serverfailererror(e.massage));
    } catch (e) {
      log("exception in Signinuserwithanemailandpassword : ${e.toString()} ");
      return left(serverfailererror(e.toString()));
    }

  }
  
  @override
  Future<Either<failer, Userentitie>> signInWithGoogle()async {

    
    try{
    var user =await AuthService().signInWithGoogle();

    return right(UserModel.fromFirebaseUser(user));

    }
    
    catch(e){
       log("exception in Signinuserwithanemailandpassword : ${e.toString()} ");
      return left(serverfailererror("Oops there was an error try again later palecs"));





    }
    
  }
  
  @override
  Future<Either<failer, Userentitie>> signInWithFacebook()async {
      try{
    var user =await AuthService().signInWithFacebook();

    return right(UserModel.fromFirebaseUser(user));

    }
    
    catch(e){
       log("exception in Signinuserwithanemailandpassword : ${e.toString()} ");
      return left(serverfailererror("Oops there was an error try again later palecs"));





    }
  }


  
}
