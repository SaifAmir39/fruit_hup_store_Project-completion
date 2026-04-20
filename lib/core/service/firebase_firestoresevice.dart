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
  
  @override
  Future<List<Map<String, dynamic>>> getalldata({required String path})async {
  var data=await firestore.collection(path).get();
  return data.docs.map((e) => e.data()).toList();
     
  }
  
  @override
  Future<Map<String, dynamic>> getdata({required String path, required String documentid})async {
    var data= await firestore.collection(path).doc(documentid).get(); 
    return data.data() as Map<String,dynamic>;
    
  }
  
 @override
Future<List<Map<String, dynamic>>> getspecificdata({
  required String path,
    Map<String, dynamic>? rangeFilters,
  Map<String, dynamic>? filters,
  String? orderBy,
  bool descending = false,
  int? limit,
  DocumentSnapshot? startAfter,
}) async {
  Query collection = firestore.collection(path);

  /// 🔹 Filters (where)
  if (filters != null) {
    filters.forEach((key, value) {
      collection = collection.where(key, isEqualTo: value);
    });
  }
  /// 🔹 Range Filters (زي السعر)
  if (rangeFilters != null) {
    rangeFilters.forEach((key, value) {
      if (value['min'] != null) {
        collection = collection.where(key, isGreaterThanOrEqualTo: value['min']);
      }
      if (value['max'] != null) {
        collection = collection.where(key, isLessThanOrEqualTo: value['max']);
      }
    });
  }

  /// 🔹 Sorting
  if (orderBy != null) {
    collection = collection.orderBy(orderBy, descending: descending);
  }

  /// 🔹 Pagination
  if (startAfter != null) {
    collection = collection.startAfterDocument(startAfter);
  }

  /// 🔹 Limit
  if (limit != null) {
    collection = collection.limit(limit);
  }

  var data = await collection.get();

  return data.docs.map((e) => e.data() as Map<String, dynamic>).toList();
}

  @override
  Future<void> addData({required String path, required Map<String, dynamic> data})async {
    await firestore.collection(path).add(data);
    
  }
  
 
  
}
 

