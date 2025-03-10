import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'reset_password_view_model.dart';

class PasswordStrengthIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ResetPasswordViewModel>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0), // إزالة رأس السلايدر
          ),
          child: Slider(
            value: viewModel.passwordStrength,
            min: 0,
            max: 3,
            divisions: 3,
            activeColor: Colors.grey[800],
            inactiveColor: Colors.grey[400],
            onChanged: (value) {},
          ),
        ),
        ...viewModel.passwordCriteria.entries.map((entry) => Row(
          children: [
            Icon(Icons.circle, size: 10, color: entry.value ? Colors.grey[800] : Colors.grey[400]),
            SizedBox(width: 8),
            Text(entry.key),
          ],
        )),
      ],
    );
  }
}