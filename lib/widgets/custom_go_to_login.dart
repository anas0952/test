import 'package:flutter/material.dart';

class CustomGoToLogin extends StatelessWidget {
  const CustomGoToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Have An Account ? ',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        Text(
          'Sign In ',
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
