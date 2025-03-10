import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners(); // لإعادة بناء الواجهة
  }

  void login(BuildContext context) {
    // TODO: أضف منطق تسجيل الدخول هنا
    print("تم تسجيل الدخول: ${nameController.text}");
  }
}