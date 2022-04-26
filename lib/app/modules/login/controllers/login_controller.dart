import 'package:get/get.dart';

class LoginController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;
  final isEmailValid = false.obs;
  final isPasswordValid = false.obs;

  void login() {
    if (isEmailValid.value && isPasswordValid.value) {
      Get.printInfo(info: '$email - $password');
      Future.delayed(const Duration(seconds: 3));
    }
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (value.isEmail) {
      return 'Email is invalid';
    }
    isEmailValid.value = true;
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length <= 6) {
      return 'Password must be at least 6 characters';
    } else if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    } else if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }
    isPasswordValid.value = true;
    return null;
  }
}
