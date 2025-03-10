import 'package:car_app/features/auth/presentation/login_view_model.dart';
import 'package:flutter/material.dart';

import 'custom_forget_password.dart';
import 'custom_login_button.dart';
import 'custom_sign_up_text.dart';
import 'custom_text_form_field.dart';
import 'custom_title_text.dart';

class LoginForm extends StatelessWidget {
  final LoginViewModel viewModel;
  final double screenWidth;
  final double screenHeight;

  const LoginForm({
    Key? key,
    required this.viewModel,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.06,
        vertical: screenHeight * 0.02,
      ),
      child: Column(
        children: [
          const CustomTitleText(),
          const SizedBox(height: 20),
          CustomTextFormField(
            hintText: "الايميل",
            icon: Icons.person,
            obscureText: false,
            controller: viewModel.nameController,
          ),
          const SizedBox(height: 15),
          CustomTextFormField(
            hintText: "كلمة السر",
            icon: Icons.lock,
            obscureText: !viewModel.isPasswordVisible,
            controller: viewModel.passwordController,
            suffixIcon: IconButton(
              onPressed: viewModel.togglePasswordVisibility,
              icon: Icon(
                viewModel.isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const CustomForgotPassword(),
          const SizedBox(height: 10),
          CustomLoginButton(viewModel: viewModel, screenHeight: screenHeight),
          const SizedBox(height: 15),
          const CustomSignUpText(),
        ],
      ),
    );
  }
}