import 'package:flutter/material.dart';

import 'login_view_model.dart';

class CustomLoginButton extends StatelessWidget {
  final LoginViewModel viewModel;
  final double screenHeight;
  const CustomLoginButton({required this.viewModel, required this.screenHeight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: screenHeight * 0.06,
      child: ElevatedButton(
        onPressed: () => viewModel.login(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF202C79),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(
          "تسجيل الدخول",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Almarai',
            fontSize: MediaQuery.of(context).size.width * 0.04,
          ),
        ),
      ),
    );
  }
}
