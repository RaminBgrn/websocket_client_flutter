import 'dart:async';

import 'package:http4/http4.dart';
import 'package:websocket_client_flutter/services/token_service.dart';

class AuthInterceptor extends InterceptorContract {
  @override
  FutureOr<BaseRequest> interceptRequest({required BaseRequest request}) async {
    final String token = await TokenService().getAccessToken();
    request.headers.addAll({
      'Accept': 'application/json',
    });
    if (token.isNotEmpty) {
      request.headers.addAll({'Authentication': "Bearer $token"});
    }
    return Future.value(request);
  }

  @override
  FutureOr<BaseResponse> interceptResponse({required BaseResponse response}) {
    return Future.value(response);
  }
}
