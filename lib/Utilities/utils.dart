import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  Future<bool> saveStringInLocalMemory(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }
}
