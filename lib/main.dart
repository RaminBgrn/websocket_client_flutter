import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http4/http4.dart';
import 'package:websocket_client_flutter/routes/route_path.dart';
import 'package:websocket_client_flutter/routes/routings.dart';
import 'package:websocket_client_flutter/services/token_service.dart';

void main() {
  Http4Config().baseUrl = "http://192.168.1.101:8000/api/";
  TokenService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chatify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutePath.splash,
      getPages: Routings.routingsPages(),
    );
  }
}
