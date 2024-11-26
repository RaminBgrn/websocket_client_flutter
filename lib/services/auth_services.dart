import 'package:http4/http4.dart' as http4;
import 'package:http4/package_content/domain/http4_response.dart';
import 'package:websocket_client_flutter/core/request_interceptors.dart';
import 'package:websocket_client_flutter/features/auth/model/auth_model.dart';

class AuthServices extends http4.Http4 {
  Future<Http4Response> register(AuthModel model) async {
    final response = await post('register', body: {
      "user_name": model.userName,
      "email": model.email,
      "password": model.password
    }, interceptors: [
      AuthInterceptor(),
    ]);
    return response;
  }

  Future<Http4Response> login() async {
    final loginResponse =
        await post("user_data", interceptors: [AuthInterceptor()]);
    return loginResponse;
  }
}
