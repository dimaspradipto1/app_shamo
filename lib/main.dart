import 'package:app_shamo/pages/cart_page.dart';
import 'package:app_shamo/pages/edit_profile_page.dart';
import 'package:app_shamo/pages/home/detail_caht_page.dart';
import 'package:app_shamo/pages/home/main_page.dart';
import 'package:app_shamo/pages/product_page.dart';
import 'package:app_shamo/pages/sign_in_page.dart';
import 'package:app_shamo/pages/sign_up_page.dart';
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
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => const DetailChatPage(),
        '/edit-profile': (context) => const EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
