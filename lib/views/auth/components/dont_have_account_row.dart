import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:selfie_me/views/auth/login_or_signup_page.dart';

class DontHaveAccountRow extends StatelessWidget {
  const DontHaveAccountRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t Have Account?'),
        TextButton(
          onPressed: () => Get.offAll(LoginOrSignUpPage()),
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
