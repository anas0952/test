import 'package:flutter/material.dart';
import 'package:test/utils/butoon_login_signup.dart';
import 'package:test/widgets/custom_all_fields.dart';
import 'package:test/widgets/custom_app_bar.dart';
import 'package:test/widgets/custom_title_app_bar.dart';

class ExpanseMangmentBodyView extends StatefulWidget {
  const ExpanseMangmentBodyView({super.key});
  @override
  State<ExpanseMangmentBodyView> createState() =>
      _ExpanseMangmentBodyViewState();
}

class _ExpanseMangmentBodyViewState extends State<ExpanseMangmentBodyView> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const CustomAppBar(),
            const CustomTitleAppBar(),
            const SizedBox(
              height: 10,
            ),
            Positioned(
              top: 270,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      isSelected = true;
                      setState(() {});
                    },
                    child: isSelected
                        ? CustomButton(
                            text: 'SIGN UP',
                            colorText: Colors.green[400]!,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(28),
                              ),
                            ))
                        : const CustomButton(
                            text: 'SIGN UP',
                            colorText: Colors.white,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.zero,
                            )),
                  ),
                  GestureDetector(
                    onTap: () {
                      isSelected = false;
                      setState(() {});
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * .5,
                      alignment: Alignment.center,
                      height: 50,
                      child: isSelected
                          ? const Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            )
                          : CustomButton(
                              text: 'SIGN IN',
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(22))),
                              colorText: Colors.green[400]!),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        isSelected
            ? const CustomAllfieldsSignUp()
            : const CustomAllfieldsLogin()
      ],
    );
  }
}
