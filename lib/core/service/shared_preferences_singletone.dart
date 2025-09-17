import 'package:shared_preferences/shared_preferences.dart';
class CacheNetwork {
  static late SharedPreferences _sharedPref;

  static Future<void> init() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  static Future<bool> insertToCache({required String key, required bool value}) async {
    return await _sharedPref.setBool(key, value);
  }

  static Future<bool> getFromCache({required String key}) async {
    return _sharedPref.getBool(key) ?? false ;
  }

  static Future<void> deleteToken({required String key}) async {
    await _sharedPref.remove(key);
  }
}
