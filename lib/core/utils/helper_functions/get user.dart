import 'dart:convert';

import 'package:fruit_hup_store/core/service/shared_preferences_singletone.dart';
import 'package:fruit_hup_store/features/auth/data/models/user_model.dart';
import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';

Userentitie getuserdata()  {
  var jsonstring =  CacheNetwork.getStringFromcache(key: "user_data");
  

  var user = UserModel.fromJson(jsonDecode(jsonstring));

  return user;
}
