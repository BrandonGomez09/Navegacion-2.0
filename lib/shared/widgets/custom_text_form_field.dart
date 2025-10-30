import 'package:flutter/material.dart';




class CustomTextFormField extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.prefixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}