import 'package:flutter/material.dart';
import 'Authentication/sign_in.dart';
import 'Authentication/sign_up.dart';
import 'Authentication/forgot_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth App',
      initialRoute: '/sign-in',
      routes: {
        '/sign-in': (context) => LoginPage(),
        '/sign-up': (context) => SignUpPage(),
        '/forgot-password': (context) => ForgotPasswordPage(),
      },
    );
  }
}