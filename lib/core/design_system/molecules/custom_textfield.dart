import 'package:flutter/material.dart';
import '../atoms/app_colors.dart';
import '../atoms/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.formLabel),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          style: AppTextStyles.formInput,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.darkField,
            hintText: 'Ingresa tu $label',
            hintStyle: AppTextStyles.secondaryText.copyWith(color: AppColors.mediumText.withOpacity(0.5)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          ),
        ),
      ],
    );
  }
}