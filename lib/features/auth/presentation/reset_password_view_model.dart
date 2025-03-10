import 'package:flutter/material.dart';

class ResetPasswordViewModel extends ChangeNotifier {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  String? errorMessage;
  double passwordStrength = 0;
  Map<String, bool> passwordCriteria = {
    "8 حروف على الأقل": false,
    "تحتوي على رقم": false,
    "تحتوي على رمز": false,
  };

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible = !isConfirmPasswordVisible;
    notifyListeners();
  }

  void validatePasswords() {
    String password = newPasswordController.text;
    passwordCriteria["8 حروف على الأقل"] = password.length >= 8;
    passwordCriteria["تحتوي على رقم"] = RegExp(r'[0-9]').hasMatch(password);
    passwordCriteria["تحتوي على رمز"] =
        RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(password);

    double newStrength =
    passwordCriteria.values.where((v) => v).length.toDouble();

    // تحريك السلايدر بشكل سلس عند تغيير القوة
    if (passwordStrength != newStrength) {
      Future.delayed(Duration(milliseconds: 300), () {
        passwordStrength = newStrength;
        notifyListeners();
      });
    }
  }

  String getPasswordStrengthLabel() {
    return [
      "ضعيف جدًا",
      "ضعيف",
      "متوسط",
      "قوي",
      "قوي جدًا"
    ][passwordStrength.toInt()];
  }

  Color getPasswordStrengthColor() {
    return [
      Colors.grey,
      Colors.red,
      Colors.orange,
      Colors.green,
      Colors.blue
    ][passwordStrength.toInt()];
  }

  void resetPassword(BuildContext context) {
    if (newPasswordController.text != confirmPasswordController.text) {
      _showMessage(context, "كلمتا المرور غير متطابقتين");
      return;
    }
    _showMessage(context, "تم تعيين كلمة المرور بنجاح!", success: true);
  }

  void _showMessage(BuildContext context, String message,
      {bool success = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(message),
          backgroundColor: success ? Colors.green : Colors.red),
    );
  }
}

