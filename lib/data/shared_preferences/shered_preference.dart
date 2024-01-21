import 'package:dating_app/domain/modules/Token/token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String token = 'access_key';
  static const String isLoged = 'is_logedIn';
  static const String refresh = 'refresh_key';

  static Future<void> setToken({required TokenModel tokenModel}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(token, tokenModel.accessToken);
    preferences.setString(refresh, tokenModel.refreshToken);
  }

  static Future<TokenModel> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String accessToken = preferences.getString(token) ?? '';
    String refeshToken = preferences.getString(token) ?? '';
    return TokenModel(accessToken: accessToken, refreshToken: refeshToken);
  }

  static Future<void> setLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(isLoged, true);
  }

  static Future<void> removeLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  static Future<bool> getLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(isLoged) ?? false;
  }
}
