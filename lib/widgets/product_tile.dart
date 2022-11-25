import 'package:app_shamo/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductTile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var semiBold;

  ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Football',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Predator 20.3 Firm Ground',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                '\$ 68,47',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
