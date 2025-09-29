import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup_store/core/errors/custome%20_exception.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/core/service/Database_service.dart';
import 'package:fruit_hup_store/core/service/auth_service.dart';
import 'package:fruit_hup_store/core/utils/backend_endpoint.dart';
import 'package:fruit_hup_store/features/auth/data/models/user_model.dart';
import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';
import 'package:fruit_hup_store/features/auth/domain/repoes/auth_repo.dart';
class AuthRepoImplementions implements AuthRepo {
  AuthService authService;
  DatabaseService databaseService;

  AuthRepoImplementions({
    required this.authService,
    required this.databaseService,
  });
  @override
  Future<Either<failer, Userentitie>> createuserwithemailanpassword(
    String email,
    String password,
    String name,
  ) async {
      User? user;
    try {
       user = await authService.createUserWiheEmailAndPassword(
        email: email,
        password: password,
      );
    var userentity=Userentitie(email: email, name: name, udi: user.uid);

      await adduserToFirestore(user:userentity);
      return right(userentity);
    } on CustomeException catch (e) {
      if (user != null) {
        await user.delete();
      } 


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
       var userentite=await getuserdata(uid: user.uid);
      return right(userentite);
    } on CustomeException catch (e) {
      return left(serverfailererror(e.massage));
    } catch (e) {
      log("exception in Signinuserwithanemailandpassword : ${e.toString()} ");
      return left(serverfailererror(e.toString()));
    }
  }

  @override
  Future<Either<failer, Userentitie>> signInWithGoogle() async {
    User ? user;
    
    try {
     user = await AuthService().signInWithGoogle();
        var userentite=UserModel.fromFirebaseUser(user);
        await adduserToFirestore(user: userentite);
        var isexsite=await databaseService.checkifdocumentexit(path: BackendEndpoint.getUsersData, documentid: user.uid);
        if(!isexsite){
          await adduserToFirestore(user: userentite);
        }
          else{
            await getuserdata(uid: user.uid);
          }
      return right(userentite);

      

    } catch (e) {
     if (user != null) {
        await user.delete();
      } 



      log("exception in Signinuserwithanemailandpassword : ${e.toString()} ");
      return left(
        serverfailererror("Oops there was an error try again later palecs"),
      );
    }
  }

  @override
  Future<Either<failer, Userentitie>> signInWithFacebook() async {
    User ?user;
    try {
       user = await AuthService().signInWithFacebook();
        var userentite=UserModel.fromFirebaseUser(user);
        await adduserToFirestore(user: userentite);
        var isexsite=await databaseService.checkifdocumentexit(path: BackendEndpoint.getUsersData, documentid: user.uid);
        if(!isexsite){
          await adduserToFirestore(user: userentite);
        }
          else{
            await getuserdata(uid: user.uid);
          }

      return right( userentite);
    } catch (e) {
      log("exception in Signinuserwithanemailandpassword : ${e.toString()} ");
      return left(
        serverfailererror("Oops there was an error try again later palecs"),
      );
    }
  }

  @override
  Future adduserToFirestore({required Userentitie user}) async {
    await databaseService.AddData(
      path: BackendEndpoint.addUserData,
      data: user.toMap(), documentid: user.udi,
    );
  }
  
  @override
  Future<Userentitie> getuserdata({ required String uid}) async{
   
   var user= await databaseService.getuserdata(path: BackendEndpoint.getUsersData, uid: uid);


   return user;





  }
}
