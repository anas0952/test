import 'package:flutter/material.dart';

class CustomTitleAppBar extends StatelessWidget {
  const CustomTitleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          child: Image.asset(
            'assets/image/1.png',
            fit: BoxFit.cover,
          ),
        ),
        const Text(
          'Experiens',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Kalam',
          ),
        ),
        const Text(
          'mangement',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Kalam',
          ),
        ),
        const SizedBox(
          height: 65,
        ),
      ],
    );
  }
}
