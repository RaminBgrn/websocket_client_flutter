import 'package:http4/http4.dart' as http4;
import 'package:http4/package_content/domain/http4_response.dart';
import 'package:websocket_client_flutter/core/request_interceptors.dart';

class UserDataRemote extends http4.Http4 {
  Future<Http4Response> fetchUserData() async {
    final userResponse = await get(
      'user_data',
      interceptors: [AuthInterceptor()],
    );
    return userResponse;
  }
}
