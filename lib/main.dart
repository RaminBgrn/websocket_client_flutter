import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http4/http4.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:websocket_client_flutter/constant/color_palette.dart';
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
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: ColorPalette.myGrey[800],
        useMaterial3: true,
      ),
      initialRoute: RoutePath.splash,
      getPages: Routings.routingsPages(),
    );
  }
}
