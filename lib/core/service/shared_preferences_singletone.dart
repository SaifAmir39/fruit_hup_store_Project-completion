import 'package:shared_preferences/shared_preferences.dart';
class CacheNetwork {
  static late  SharedPreferences _sharedPref;


  static Future<void> init() async {
     _sharedPref = await SharedPreferences.getInstance();
  }

  static Future insertToCache({required String key, required bool value}) async {
    return await  _sharedPref.setBool(key, value);
  }
  static Future insertToCacheString({required String key, required String value}) async {
    return await  _sharedPref.setString(key, value);
  }
  static  getStringFromcache({required String key})  {
    return  _sharedPref.getString(key)??"";
  }

  

  static Future deleteToken({required String key}) async {
    await  _sharedPref.remove(key);
  }
}
