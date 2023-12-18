import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:selfie_me/views/auth/login_or_signup_page.dart';
import 'package:selfie_me/views/auth/sign_up_page.dart';

import 'core/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Selfie Me',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.defaultTheme,
      home: SignUpPage(),

    );
  }
}
