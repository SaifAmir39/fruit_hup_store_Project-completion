

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup_store/core/errors/custome%20_exception.dart';

class AuthService {
  Future<User> createUserWiheEmailAndPassword({required String email,required String password})async{
  try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );

return credential.user!;
} 

on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
  throw CustomeException(massage: ("'The password provided is too weak."));
  } else if (e.code == 'email-already-in-use') {
   throw CustomeException(massage: ('The account already exists for that email.'));
  }

else{

  throw CustomeException(massage: ("Oops there was an error , try again later"));
}

  
    
} catch (e) {

      throw Exception("Unexpected error: $e");

}



  }


}