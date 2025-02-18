import 'package:flutter/material.dart';
import 'package:sale_management_app/constants/app_colors.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({super.key, required this.label, required this.onPressed});
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonBackground,
        foregroundColor: AppColors.white,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.white,
        ),
      ),
    );
  }
}
