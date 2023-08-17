import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:home_market/screens/home/root_page.dart';
import 'package:home_market/screens/landing_page.dart';
import 'package:home_market/screens/mail_verification/mail_verification.dart';
import '../../exception/t_exception.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> _firebaseUser;
  //var verificationId = "".obs;
  final _phoneVerificationId = ''.obs;
  // late final GoogleSigInAccount _googleUser;

  User? get firebaseUser => _firebaseUser.value;

  String get getUserID => firebaseUser?.uid ?? "";

  String get getUserEmail => firebaseUser?.email ?? "";

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    _firebaseUser = Rx<User?>(_auth.currentUser);
    _firebaseUser.bindStream(_auth.userChanges());
    // firebaseUser = Rx<User?>(_auth.currentUser);
    // firebaseUser.bindStream(_auth.userChanges());
    FlutterNativeSplash.remove();
    setInitialScreen(_firebaseUser.value);
    //ever(firebaseUser, _setInitialScreen);
  }

  // setInitialScreen(User? user) async {
  //   user == null
  //       ? Get.offAll(() => Landing())
  //       : user.emailVerified
  //           ? Get.offAll(() => const RootPage())
  //           : Get.offAll(() => const MailVerification());
  // }

  setInitialScreen(User? user) async {
    user == null
        ? Get.offAll(() => Landing())
        : Get.offAll(() => const RootPage());
  }

  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      final ex = TExceptions.fromCode(e.code);
      throw ex.message;
    } catch (_) {
      const ex = TExceptions();
      throw ex.message;
    }
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credentials) async {
        await _auth.signInWithCredential(credentials);
      },
      codeSent: (verificationId, resendToken) {
        _phoneVerificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        _phoneVerificationId.value = verificationId;
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone number') {
          Get.snackbar('Error', 'The provided phone number is not valid');
        } else {
          Get.snackbar('Error', 'Something went wrong. try again');
        }
      },
    );
  }

  Future<bool> verifyOTP(String otp) async {
    var credentials = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: _phoneVerificationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      //_firebaseUser.value
      // firebaseUser != null
      //     ? Get.offAll(() => RootPage())
      //     : Get.to(() => Landing());
    } on FirebaseAuthException catch (e) {
      final ex = TExceptions.fromCode(e.code);
      throw ex.message;
    } catch (_) {
      const ex = TExceptions();
      throw ex.message;
    }
  }

  // Future<void> loginWithEmailAndPassword(String email, String password) async {
  //   try {
  //     await _auth.signInWithEmailAndPassword(email: email, password: password);
  //   } on FirebaseAuthException catch (e) {
  //     final result = TExceptions.fromCode(e.code);
  //     throw result.message;
  //   } catch (_) {
  //     const result = TExceptions();
  //     throw result.message;
  //   }
  // }

  Future<String?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final result = TExceptions.fromCode(e.code);
      throw result.message;
    } catch (_) {
      const result = TExceptions();
      throw result.message;
    }
    //   final ex = LogInWithEmailAndPasswordFailure.fromCode(e.code);
    //   return ex.message;
    // } catch (_) {
    //   const ex = LogInWithEmailAndPasswordFailure();
    //   return ex.message;
    // }
    // return null;
  }

  Future<void> logout() async => await _auth.signOut();
}
