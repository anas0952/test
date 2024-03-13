import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.decoration,
    required this.colorText,
    required this.text,
  });
  final Decoration? decoration;
  final String text;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      alignment: Alignment.center,
      height: 50,
      decoration: decoration,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 22,
          color: colorText,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class CustomButtonLoginWithSignUp extends StatelessWidget {
  const CustomButtonLoginWithSignUp({super.key, required this.string});
  final String string;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        alignment: Alignment.center,
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff30b085),
          borderRadius: BorderRadius.circular(28.0),
        ),
        child: Text(
          string,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
