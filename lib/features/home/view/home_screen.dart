import 'package:flutter/material.dart';
import 'package:websocket_client_flutter/features/home/widgets/app_bar.dart';
import 'package:websocket_client_flutter/features/home/widgets/desktop_menu.dart';
import 'package:websocket_client_flutter/features/home/widgets/menu_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: IAppBar.appBar(context),
        body: const Row(
          children: [
            Stack(
              children: [
                MenuContent(),
                DesktopMenu(),
              ],
            )
          ],
        ));
  }
}
