import 'package:flutter/material.dart';
import 'package:golekos/theme.dart';

class HappyTenant extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final int countStar;

  HappyTenant({
    this.imageUrl,
    this.name,
    this.description,
    this.countStar,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 45,
          height: 45,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: titleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              description,
              style: subTitleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: greyColor,
              ),
            )
          ],
        ),
        Spacer(),
        Text(
          '${countStar}/5',
          style: titleTextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        Image.asset(
          'assets/icon_star_solid.png',
          width: 24,
          height: 24,
        ),
      ],
    );
  }
}
