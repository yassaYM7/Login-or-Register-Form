import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.validator,
    required this.labelText,
    this.hintText,
    required this.suffixIcon,
    required this.controller,
    this.obscureText = true,
  });
  final FormFieldValidator<String>? validator;
  final String labelText;
  final String? hintText;
  final Widget suffixIcon;
  final TextEditingController controller;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(9)),
        ),
      ),
    );
  }
}