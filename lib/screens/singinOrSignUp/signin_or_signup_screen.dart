import 'package:chatmessagingapp/components/primary_button.dart';
import 'package:chatmessagingapp/constants.dart';
import 'package:flutter/material.dart';

class SigninOrSignUpScreen extends StatelessWidget {
  const SigninOrSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              "assets/images/Logo_light.png",
              height: 146,
            ),
            const Spacer(),
            PrimaryButton(text: "Sign In", press: () {}),
            const SizedBox(
              height: kDefaultPadding * 1.5,
            ),
            PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {}),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      )),
    );
  }
}
