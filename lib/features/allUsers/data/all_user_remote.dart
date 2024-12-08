import 'package:http4/http4.dart' as http4;
import 'package:http4/package_content/domain/http4_response.dart';
import 'package:websocket_client_flutter/core/request_interceptors.dart';

class AllUserRemote extends http4.Http4 {
  Future<Http4Response> fetchAllUsers() async {
    final allUsersResponse =
        await get('all_users', interceptors: [AuthInterceptor()]);
    return allUsersResponse;
  }
}
