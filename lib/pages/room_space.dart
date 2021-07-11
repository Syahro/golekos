import 'package:flutter/material.dart';
import 'package:golekos/theme.dart';

class RoomSpace extends StatelessWidget {
  final String imageUrl;
  final int countSpecs;
  final nameSpecs;

  RoomSpace({
    this.imageUrl,
    this.countSpecs,
    this.nameSpecs,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              imageUrl,
              width: 28,
              height: 28,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '$countSpecs',
              style: titleTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          nameSpecs,
          style: subTitleTextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}
