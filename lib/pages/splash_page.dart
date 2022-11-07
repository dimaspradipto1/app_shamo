import 'dart:async';

import 'package:app_shamo/theme.dart';
import 'package:flutter/material.dart';

class SplasPage extends StatefulWidget {
  const SplasPage({Key? key}) : super(key: key);

  @override
  State<SplasPage> createState() => _SplasPageState();
}

class _SplasPageState extends State<SplasPage> {
  @override
  void initState() {
    //?TODO: implement initState
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/image_splash.png',
            ),
          )),
        ),
      ),
    );
  }
}
