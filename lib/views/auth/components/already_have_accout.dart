import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selfie_me/views/auth/login_or_signup_page.dart';


class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already Have Account?'),
        TextButton(
          onPressed: () => Get.offAll(LoginOrSignUpPage()),
          child: const Text('Log In'),
        ),
      ],
    );
  }
}
