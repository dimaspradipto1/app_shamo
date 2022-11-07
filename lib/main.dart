import 'package:app_shamo/pages/sign_in_page.dart';
import 'package:app_shamo/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplasPage(),
        '/sign-in': (context) => SignInPage(),
      },
    );
  }
}
