import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper2 {
  static late SharedPreferences _prefs;
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> saveToken(String? access_token) async {
    await _prefs.setString("access_token", access_token??"");
  }

  static String? get getToken {
    return _prefs.getString("access_token")??"";
  }
}