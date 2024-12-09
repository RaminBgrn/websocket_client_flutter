import 'package:get/get.dart';
import 'package:websocket_client_flutter/features/allUsers/data/all_user_remote.dart';
import 'package:websocket_client_flutter/features/allUsers/model/all_users_model.dart';

class AllUsersViewModel extends GetxController {
  late AllUserRemote allUserRemote;

  AllUsersViewModel({required this.allUserRemote});

  final List<AllUsersModel> _allUsersModel = [];
  List<AllUsersModel> get getAllUsersModel => _allUsersModel;

  Future<void> fetchAllUsers() async {
    _allUsersModel.clear();
    final allUserResponse = await allUserRemote.fetchAllUsers();

    for (final user in allUserResponse.decodedBody['data']) {
      _allUsersModel.add(AllUsersModel.fromJson(user));
    }
    update();
  }

  @override
  void onReady() {
    fetchAllUsers();
    super.onReady();
  }
}
