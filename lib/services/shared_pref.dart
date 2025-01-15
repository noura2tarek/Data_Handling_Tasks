import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static saveData({required String key, required String value}) async {
    await sharedPreferences?.setString(key, value);
  }

  static Future<String?> getData({required String key}) async {
    return sharedPreferences?.getString(key);
  }
}
