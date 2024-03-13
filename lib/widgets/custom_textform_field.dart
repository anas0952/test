import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffixIcon,
    required this.hintText,
    required this.keyboardType,
  });
  final Widget? suffixIcon;
  final String hintText;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      child: TextFormField(
        maxLines: null,
        expands: true,
        style: const TextStyle(
          color: Colors.black,
        ),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          filled: true,
          fillColor: Colors.grey.withOpacity(.12),
          border: InputBorder.none,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }
}

InputBorder buildBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(14.0),
  );
}
