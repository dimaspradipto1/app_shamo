import 'package:app_shamo/theme.dart';
import 'package:app_shamo/widgets/product_card.dart';
import 'package:app_shamo/widgets/product_tile.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  get semiBold => null;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMArgin,
          left: defaultMArgin,
          right: defaultMArgin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Dimas Pradipto',
                    style: primariTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '@alexkeinn',
                    style: subTitleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMArgin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMArgin,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'All Shoes',
                  style: primariTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(
                  right: defaultMArgin,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xff504F5E),
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Running',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: light,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(
                  right: defaultMArgin,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xff504F5E),
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Training',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: light,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(
                  right: defaultMArgin,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xff504F5E),
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'Basketball',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: light,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(
                  right: defaultMArgin,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xff504F5E),
                  ),
                  color: transparentColor,
                ),
                child: Text(
                  'hiking',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: light,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMArgin,
          left: defaultMArgin,
        ),
        child: Text(
          'Popular Product',
          style: primariTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProduct() {
      return Container(
        margin: const EdgeInsets.only(
          top: 14,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMArgin,
              ),
              Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMArgin,
          left: defaultMArgin,
        ),
        child: Text(
          'New Arrivals',
          style: primariTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: const EdgeInsets.only(
          top: 14,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              ProductTile(),
              ProductTile(),
              ProductTile(),
              ProductTile(),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProduct(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
