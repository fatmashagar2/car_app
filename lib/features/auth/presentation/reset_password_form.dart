import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'confirm_button.dart';
import 'custom_text_form_field_2.dart';
import 'password_strength_indicator.dart';
import 'reset_password_view_model.dart';
import 'title_text.dart';

class ResetPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ResetPasswordViewModel>(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.06,
        vertical: screenHeight * 0.02,
      ),
      child: Column(
        children: [
          TitleText(),
          CustomTextFormField(
            hintText: "أدخل كلمة السر الجديدة",
            icon: Icons.lock,
            obscureText: !viewModel.isPasswordVisible,
            controller: viewModel.newPasswordController,
            onChanged: (value) => viewModel.validatePasswords(),
            suffixIcon: IconButton(
              onPressed: viewModel.togglePasswordVisibility,
              icon: Icon(viewModel.isPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off),
            ),
          ),
          SizedBox(height: 15),
          CustomTextFormField(
            hintText: "تأكيد كلمة السر",
            icon: Icons.lock,
            obscureText: !viewModel.isConfirmPasswordVisible,
            controller: viewModel.confirmPasswordController,
            onChanged: (value) => viewModel.validatePasswords(),
            suffixIcon: IconButton(
              onPressed: viewModel.toggleConfirmPasswordVisibility,
              icon: Icon(viewModel.isConfirmPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off),
            ),
          ),
          if (viewModel.errorMessage != null)
            Text(viewModel.errorMessage!,
                style: TextStyle(color: Colors.red, fontSize: 14)),
          PasswordStrengthIndicator(),
          SizedBox(height: screenHeight * 0.1),
          ConfirmButton(screenWidth: screenWidth, screenHeight: screenHeight),
        ],
      ),
    );
  }
}
