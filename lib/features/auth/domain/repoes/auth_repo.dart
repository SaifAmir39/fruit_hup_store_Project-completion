

import 'package:dartz/dartz.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';

abstract  class AuthRepo {

Future<Either<failer,Userentitie>>createuserwithemailanpassword(String email , String password);






 

}