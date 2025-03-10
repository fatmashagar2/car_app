import 'package:flutter/material.dart';

import 'custom_text_form_field_3.dart';
import 'login_link.dart';
import 'social_media_icons.dart';

class SignUpForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const SignUpForm({
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    Key? key, // إضافة مفتاح للويدجت
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "سجل الآن",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Almarai', color: Color(0xff202C79)),
          ),
          const SizedBox(height: 10),
          const Text("انشئ حساب جديد", style: TextStyle(fontSize: 20, color: Color(0xff5D5D5D))),
          const SizedBox(height: 20),

          CustomTextFormField3(hintText: "الاسم كامل", icon: Icons.person, controller: nameController),
          const SizedBox(height: 15),
          CustomTextFormField3(hintText: "البريد الإلكتروني", icon: Icons.email, controller: emailController),
          const SizedBox(height: 15),
          CustomTextFormField3(hintText: "كلمة السر", icon: Icons.lock, controller: passwordController, showSuffixIcon: true),
          const SizedBox(height: 15),
          CustomTextFormField3(hintText: "تأكيد كلمة السر", icon: Icons.lock, controller: confirmPasswordController, showSuffixIcon: true),
          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 50, // استخدام ارتفاع ثابت للزر
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff202C79),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("تسجيل الإشتراك", style: TextStyle(color: Colors.white)),
            ),
          ),

          const SizedBox(height: 15),
          Image.asset("assets/images/img9.png"),
          const SizedBox(height: 15),
          SocialMediaIcons(),
          const SizedBox(height: 15),
          LoginLink(),
        ],
      ),
    );
  }
}
