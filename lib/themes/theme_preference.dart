import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference {
  static const theme_status = "THEMESTATUS";

  setDarkTheme(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(theme_status, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(theme_status) ?? false;
  }
}
