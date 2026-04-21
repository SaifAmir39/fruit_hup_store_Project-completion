import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';

abstract class DatabaseService {
  Future<void> AddData({
    required String path,
    required Map<String, dynamic> data,
    required String documentid,
  });

  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  });
  Future<Userentitie> getuserdata({required String path, required String uid});
  Future<List<Map<String, dynamic>>> getalldata({required String path});
  Future<Map<String, dynamic>> getdata({
    required String path,
    required String documentid,
  });
   Future<void> updateData({
    required String path,
    required Map<String, dynamic> data,
    required String documentid,
  });
  
  Future<List<Map<String, dynamic>>> getspecificdata({
    required String path,
     Map<String, dynamic>? rangeFilters, 
    Map<String, dynamic>? filters,
    String? orderBy,
    bool descending = false,
    int? limit,
    DocumentSnapshot? startAfter,
  });
  Stream<List<Map<String, dynamic>>> getStreamdata({required String path});

   Future<bool> checkifdocumentexit({
    required String path,
    required String documentid,
  });
}
