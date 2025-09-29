import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';

class UserModel extends Userentitie {
  UserModel({required super.email, required super.name, required super.udi});


  factory UserModel.fromFirebaseUser(User user){

return UserModel(email: user.email ?? "", name: user.displayName?? "", udi: user.uid ?? "");

  }

  factory UserModel.fromJson( Map<String,dynamic> json ){
    return UserModel(
      email: json['email'],
      name: json['name'],
      udi: json['udi'],
    );


  }
}