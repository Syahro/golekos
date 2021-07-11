import 'package:flutter/material.dart';
import 'package:golekos/theme.dart';

class MostList extends StatelessWidget {
  final String imageUrl;
  final String kozName;
  final String kozType;
  final int price;

  MostList({
    this.imageUrl,
    this.kozName,
    this.kozType,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 60,
          height: 60,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kozName,
              style: titleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              kozType,
              style: subTitleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Spacer(),
        Text.rich(
          TextSpan(
            text: '\$$price',
            style: titleTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(
                  text: '\n/month',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ))
            ],
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
