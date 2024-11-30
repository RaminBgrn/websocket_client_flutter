import 'package:flutter/material.dart';
import 'package:websocket_client_flutter/services/auth_services.dart';
import 'package:websocket_client_flutter/services/token_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthServices().logOut();
            TokenService().removeToken();
          },
          child: const Text('LogOut'),
        ),
      ),
    );
  }
}
