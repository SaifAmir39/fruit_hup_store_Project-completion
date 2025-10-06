import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup_store/core/errors/custome%20_exception.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthService {
  Future<User> createUserWiheEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "exception in FirebaseService.createuserwithemailanpassword : ${e.toString()} ",
      );

      if (e.code == 'weak-password') {
        throw CustomeException(
          massage: ("'The password provided is too weak."),
        );
      } else if (e.code == 'email-already-in-use') {
        throw CustomeException(
          massage: ('The account already exists for that email.'),
        );
      } else {
        throw CustomeException(
          massage: ("Oops there was an error , try again later"),
        );
      }
    } catch (e) {
      throw Exception("Unexpected error: $e");
    }
  }

  bool Userloggedin(){
    final user=FirebaseAuth.instance.currentUser;
    return user!=null;

  }

  Future<User> signinuserwithanemailandpassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "exception in FirebaseService.createuserwithemailanpassword : ${e.toString()} ",
      );

      if (e.code == 'invalid-email') {
        throw CustomeException(massage: ('No user found for that email.'));
      }else if(e.code == 'user-not-found'
){

  throw CustomeException(massage: "no email found");
}
      
      
       else if (e.code == 'wrong-password') {
        throw CustomeException(
          massage: ('Wrong password provided for that user.'),
        );
      } else {
        throw CustomeException(
          massage: ('Wrong password provided for that user.'),
        );
      }
    } catch (e) {
          throw CustomeException(massage: "Unexpected error: $e"); 

    }
  }

 Future<User> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );


  

  return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
}

Future<User> signInWithFacebook() async {
  // Trigger the sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

  // Once signed in, return the UserCredential
  return (await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential)).user!;
}

Future<void>deleteuser()async{
  try{
    await FirebaseAuth.instance.currentUser!.delete();
  }on FirebaseAuthException catch(e){
    if(e.code=='requires-recent-login'){
      throw CustomeException(massage: "The user must reauthenticate before this operation can be executed.");
    }
  }catch(e){
    throw CustomeException(massage: "Unexpected error: $e"); 
  }
}







}