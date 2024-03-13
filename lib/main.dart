import 'package:flutter/material.dart';
import 'package:test/views/expanse_mangment_body.dart';

void main() {
  runApp(const ExpanseApp());
}

class ExpanseApp extends StatelessWidget {
  const ExpanseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: const TextTheme(),
      ),
      home: const ExpanseMangmentBody(),
    );
  }
}
