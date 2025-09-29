import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';

abstract class DatabaseService {

Future<void>AddData ( {required String path,required Map<String,dynamic>data,required String documentid});
Future<Userentitie> getuserdata({required String path,required String uid});

Future<bool > checkifdocumentexit({required String path,required String documentid});
}