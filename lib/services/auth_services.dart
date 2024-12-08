import 'dart:developer';

import 'package:http4/http4.dart' as http4;
import 'package:http4/package_content/domain/http4_response.dart';
import 'package:websocket_client_flutter/core/request_interceptors.dart';
import 'package:websocket_client_flutter/features/auth/model/auth_model.dart';

class AuthServices extends http4.Http4 {
  Future<Http4Response> register(AuthModel model) async {
    try {
      final response = await post('register', body: {
        "user_name": model.userName,
        "email": model.email,
        "password": model.password,
        "avatar": model.avatar,
      }, interceptors: [
        AuthInterceptor(),
      ]);
      return response;
    } catch (e) {
      log(e.toString());
      return Http4Response(isSuccessed: false, decodedBody: [], isOkey: false);
    }
  }

  Future<Http4Response> login(AuthModel model) async {
    final loginResponse = await post("login", body: {
      'email': model.email,
      'password': model.password,
    }, interceptors: [
      AuthInterceptor()
    ]);
    return loginResponse;
  }

  Future<Http4Response> logOut() async {
    final logoutResponse =
        await get('logout', interceptors: [AuthInterceptor()]);
    return logoutResponse;
  }
}
