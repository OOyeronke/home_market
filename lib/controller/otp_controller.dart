import 'package:get/get.dart';
import 'package:home_market/repository/auth_repository/authentication_repository.dart';
import 'package:home_market/screens/home/root_page.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const RootPage()) : Get.back();
  }
}
