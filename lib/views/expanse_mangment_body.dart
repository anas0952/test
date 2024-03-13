import 'package:flutter/material.dart';
import 'package:test/widgets/custom_expanse__mangment_view.dart';

class ExpanseMangmentBody extends StatelessWidget {
  const ExpanseMangmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ExpanseMangmentBodyView(),
      ),
    );
  }
}
