import 'package:get/get.dart';
import 'package:home_market/repository/auth_repository/authentication_repository.dart';
import 'package:home_market/repository/auth_repository/user_repo.dart';
import '../authentication/user_model.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  getUserData() {
    final email = _authRepo.firebaseUser?.email;
    if (email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar('Error', 'Login to continue');
    }
  }

  Future<List<UserModel>> getAllUsers() async => await _userRepo.allUsers();

  updateRecord(UserModel user) async {
    await _userRepo.updateUserRecord(user);
  }
}
