import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../auth/presentation/sign_up_header.dart';
import 'custom_text_field_4.dart';
import 'login_prompet.dart';
import 'section_subtitle.dart';
import 'section_title.dart';
import 'sign_up_button.dart';
import 'social_icons_row.dart';

class WorkshopScreen extends StatelessWidget {
  final TextEditingController workshopNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController servicesController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: Column(
              children: [
                SignUpHeader(screenWidth: screenWidth, screenHeight: screenHeight),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SectionTitle(title: "البيانات الاساسيه", color: Color(0xff202C79)),
                        SizedBox(height: screenHeight * 0.01),
                        SectionSubtitle(title: "انشئ حساب جديد", color: Color(0xff5D5D5D)),
                        SizedBox(height: screenHeight * 0.02),
                        CustomTextFormField4(hintText: "اسم الورشة-مركز الصيانه", controller: workshopNameController),
                        SizedBox(height: screenHeight * 0.015),
                        CustomTextFormField4(hintText: "العنوان بالتفصيل", controller: addressController),
                        SizedBox(height: screenHeight * 0.015),
                        CustomTextFormField4(hintText: "الخدمات المتاحة", controller: servicesController),
                        SizedBox(height: screenHeight * 0.015),
                        CustomTextFormField4(hintText: "صورة المركز", controller: imageController),
                        SizedBox(height: screenHeight * 0.02),
                        SignUpButton(screenHeight: screenHeight),
                        SizedBox(height: screenHeight * 0.015),
                        Image.asset("assets/images/img9.png"),
                        SizedBox(height: screenHeight * 0.015),
                        SocialIconsRow(),
                        SizedBox(height: screenHeight * 0.015),
                        LoginPrompt(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
