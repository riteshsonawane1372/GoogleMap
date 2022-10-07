import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {

  final String hintText;
  final bool isObsure;
  final TextEditingController controller;

  TextInputField({
    required this.hintText,
    required this.isObsure,
    required this.controller
});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        filled: true,
        hintText: "${hintText}",
      ),
      keyboardType: TextInputType.text,
      obscureText: isObsure,
    );
  }
}
