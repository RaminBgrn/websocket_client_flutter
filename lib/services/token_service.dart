import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenService extends FlutterSecureStorage {
  Future<String> readToken() async {
    final userToken = await read(key: "tokenKey");
    return (userToken != null && userToken.isNotEmpty) ? userToken : '';
  }

  Future<bool> writeToken(String token) async {
    try {
      await write(key: 'tokenKey', value: token);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
