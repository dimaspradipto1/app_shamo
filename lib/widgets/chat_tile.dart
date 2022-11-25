import 'package:flutter/material.dart';
import 'package:app_shamo/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 33,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/image_shop_logo.png',
                width: 54,
                height: 54,
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: regular,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Good night, This item is on... ',
                      style: secondaryTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Text(
                'Now',
                style: secondaryTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            thickness: 1,
            color: Color(0xff2B2939),
          ),
        ],
      ),
    );
  }
}
