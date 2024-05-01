import 'package:blogwithbloc/core/theme/theme.dart';
import 'package:blogwithbloc/features/auth/presentatiom/pages/login_page.dart';
import 'package:blogwithbloc/features/auth/presentatiom/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkThemeMode,
      home: LoginPage(),
    );
  }
}

