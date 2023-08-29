import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final String errorText;
  final bool isValid;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.errorText = "This field is required",
    this.isValid = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
