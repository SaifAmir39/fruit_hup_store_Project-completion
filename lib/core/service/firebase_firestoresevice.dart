import 'package:fruit_hup_store/core/service/Database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hup_store/features/auth/data/models/user_model.dart';
import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';

class FirebaseFirestoresevice implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> AddData({
    required String path,
    required Map<String, dynamic> data,
    required String documentid
  }) async {

    if(documentid != Null
   ){
        await firestore.collection(path).doc(documentid).set(data); 
    }


     else{
       await firestore.collection(path).add(data);
      
    }
    
   
  }

  @override
  Future<Userentitie> getuserdata({required String path, required String uid, })async {

  var data= await firestore.collection(path).doc(uid).get();
  return UserModel.fromJson(data.data() as Map<String,dynamic>);




  }
  
  @override
  Future<bool> checkifdocumentexit({required String path, required String documentid})async {
    
  var data=await firestore.collection(path).doc(documentid).get();

  return data.exists;
    
  }
  
}
 

