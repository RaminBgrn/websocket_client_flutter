import 'package:flutter/material.dart';
import 'package:websocket_client_flutter/features/home/widgets/desktop_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        DesktopMenu(),
      ],
    ));
  }
}
