import 'package:app_shamo/theme.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Text(
          "WishList Page",
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
