import 'package:flutter/material.dart';
import 'package:golekos/theme.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 7,
            blurRadius: 5,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 42,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: lightBlueColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: blueColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'HOME',
                    style: subTitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: blueColor,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.favorite,
              color: greyColor,
            ),
            Icon(
              Icons.tune,
              color: greyColor,
            ),
            Icon(
              Icons.wifi_tethering_sharp,
              color: greyColor,
            ),
            Icon(
              Icons.account_circle,
              color: greyColor,
            )
          ],
        ),
      ),
    );
  }
}
