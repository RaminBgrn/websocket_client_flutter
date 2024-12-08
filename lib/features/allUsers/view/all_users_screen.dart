import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/allUsers/viewModel/all_users_view_model.dart';

class AllUsersScreen extends GetView<AllUsersViewModel> {
  const AllUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.fetchAllUsers();
    return GetBuilder<AllUsersViewModel>(builder: (ctl) {
      return SizedBox(
        child: ListView.builder(
            itemCount: ctl.getAllUsersModel.length,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.all(8),
                color: Colors.amber,
                child: Text(ctl.getAllUsersModel[index].userName ?? 'Unknown'),
              );
            }),
      );
    });
  }
}
