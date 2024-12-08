import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/allUsers/viewModel/all_users_view_model.dart';
import 'package:websocket_client_flutter/features/allUsers/widgets/all_user_list_item.dart';

class AllUsersScreen extends GetView<AllUsersViewModel> {
  const AllUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllUsersViewModel>(builder: (ctl) {
      return SizedBox(
        child: ListView.builder(
            itemCount: ctl.getAllUsersModel.length,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return AllUserListItem(
                model: ctl.getAllUsersModel[index],
              );
            }),
      );
    });
  }
}
