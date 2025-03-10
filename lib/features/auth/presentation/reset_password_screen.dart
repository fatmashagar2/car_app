
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'header_image.dart';
import 'reset_password_form.dart';
import 'reset_password_view_model.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ResetPasswordViewModel(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Consumer<ResetPasswordViewModel>(
            builder: (context, viewModel, child) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        HeaderImage(),
                        ResetPasswordForm(),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
