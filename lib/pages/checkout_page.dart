import 'package:app_shamo/widgets/checkout_card.dart';
import 'package:flutter/material.dart';
import 'package:app_shamo/theme.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          //* NOTE: LIST ITEMS
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: primaryTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 18,
          ),
        ),
      ),
      body: content(),
    );
  }
}
