import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/home/bind/home_binding.dart';
import 'package:websocket_client_flutter/features/home/view/home_screen.dart';
import 'package:websocket_client_flutter/features/auth/bind/login_binding.dart';
import 'package:websocket_client_flutter/features/auth/view/login_screen.dart';
import 'package:websocket_client_flutter/features/splash/bind/splash_binding.dart';
import 'package:websocket_client_flutter/features/splash/view/splash_screen.dart';
import 'package:websocket_client_flutter/routes/route_path.dart';

class Routings {
  static final Routings _routings = Routings._internal();
  factory Routings() => _routings;
  Routings._internal();

  static List<GetPage> routingsPages() => [
        GetPage(
          name: RoutePath.home,
          page: () => const HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: RoutePath.splash,
          page: () => const SplashScreen(),
          binding: SplashBinding(),
        ),
        GetPage(
          name: RoutePath.login,
          page: () => const LoginScreen(),
          binding: LoginBinding(),
        )
      ];
}
