import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  // initialize shared preference
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  // Save string key in shared preferences
  static saveData({required String key, required String value}) async {
    await sharedPreferences?.setString(key, value);
  }

  // Get string key from shared preferences
  static Future<String?> getData({required String key}) async {
    return sharedPreferences?.getString(key);
  }
}
