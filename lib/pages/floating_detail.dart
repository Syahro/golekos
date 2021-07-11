import 'package:flutter/material.dart';
import 'package:golekos/theme.dart';

class FloatingDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 94,
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
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: whiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$1,355',
                      style: titleTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '/month',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: blueColor,
                child: Center(
                  child: Text(
                    'BOOKING NOW',
                    style: titleTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
