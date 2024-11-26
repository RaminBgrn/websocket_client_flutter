import 'package:shared_preferences/shared_preferences.dart';

class TokenService {
  static late final SharedPreferences sharedPreferences;
  static Future<SharedPreferences> init() async =>
      sharedPreferences = await SharedPreferences.getInstance();

  Future<String> getAccessToken() async {
    final accessToken = sharedPreferences.getString('UserToken');
    return (accessToken != null && accessToken.isNotEmpty) ? accessToken : "";
  }

  Future<bool> storeAccessToken(String token) async {
    return sharedPreferences.setString("UserToken", token);
  }
}
