import 'package:fruit_hup_store/core/service/Database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestoresevice implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> AddData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await firestore.collection(path).add(data);
  }
}
