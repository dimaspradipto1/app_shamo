import 'package:app_shamo/theme.dart';
import 'package:flutter/material.dart';

class SplasPage extends StatelessWidget {
  const SplasPage({Key? key}) : super(key: key);

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
