import 'package:car_app/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/presentation/home_screen.dart';
import 'reset_password_view_model.dart';

class ConfirmButton extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const ConfirmButton({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ResetPasswordViewModel>(context, listen: false);
    return SizedBox(
      width: screenWidth * 0.9,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff202C79),
          minimumSize: Size(screenWidth * 0.6, screenHeight * 0.06),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
        ),
        child: FittedBox(
          child: const Text(
            "تأكيد",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Almarai',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
