import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/utils/butoon_login_signup.dart';
import 'package:test/widgets/custom_divider.dart';
import 'package:test/widgets/custom_go_to_login.dart';
import 'package:test/widgets/custom_social_media.dart';
import 'package:test/widgets/custom_textform_field.dart';

class CustomAllfieldsSignUp extends StatelessWidget {
  const CustomAllfieldsSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Column(
        children: [
          const CustomTextField(
            keyboardType: TextInputType.name,
            hintText: 'Full Name',
          ),
          const CustomTextField(
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email',
          ),
          CustomTextField(
            keyboardType: TextInputType.multiline,
            hintText: 'Password',
            suffixIcon: Icon(
              FontAwesomeIcons.eyeSlash,
              size: 18,
              color: Colors.black.withOpacity(.5),
            ),
          ),
          const CustomTextField(
            keyboardType: TextInputType.multiline,
            hintText: 'Confirm Password',
          ),
          const CustomButtonLoginWithSignUp(string: 'Sign Up'),
          const CustomDivider(),
          const CustomSocialMedia(),
          const SizedBox(
            height: 22,
          ),
          const CustomGoToLogin(),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class CustomAllfieldsLogin extends StatelessWidget {
  const CustomAllfieldsLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const CustomTextField(
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email',
          ),
          CustomTextField(
            keyboardType: TextInputType.multiline,
            hintText: 'Password',
            suffixIcon: Icon(
              Icons.remove_red_eye_sharp,
              size: 25,
              color: Colors.grey.withOpacity(1),
            ),
          ),
          Row(
            children: [
              Checkbox(value: false, onChanged: (flase) {}),
              const Text(
                'Rememper Me',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomButtonLoginWithSignUp(string: 'Sign In')
        ],
      ),
    );
  }
}
