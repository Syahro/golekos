import 'package:flutter/material.dart';
import 'package:golekos/pages/happy_tenant.dart';
import 'package:golekos/pages/room_space.dart';
import 'package:golekos/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/pic.png',
              width: MediaQuery.of(context).size.width,
              height: 360,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 22,
                right: 22,
                top: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.chevron_left,
                          color: semiBlackColor,
                        ),
                      ),
                      Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          color: semiBlackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 216,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: whiteColor,
                          border: Border.all(
                            color: whiteColor,
                            width: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.transparent,
                            border: Border.all(color: whiteColor, width: 1)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                          border: Border.all(
                            color: whiteColor,
                            width: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                          border: Border.all(
                            color: whiteColor,
                            width: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 320,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 22,
                      right: 22,
                      top: 22,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Blue Fast',
                                  style: titleTextStyle.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Umum',
                                  style: subTitleTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/icon_star_solid.png',
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Image.asset(
                              'assets/icon_star_solid.png',
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Image.asset(
                              'assets/icon_star_solid.png',
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Image.asset(
                              'assets/icon_star_solid.png',
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Image.asset(
                              'assets/icon_star.png',
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Room Specs',
                              style: titleTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: semiBlackColor,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                RoomSpace(
                                  imageUrl: 'assets/bed.png',
                                  countSpecs: 3,
                                  nameSpecs: 'Master Bed',
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                RoomSpace(
                                  imageUrl: 'assets/shower.png',
                                  countSpecs: 2,
                                  nameSpecs: 'Bathrooms',
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                RoomSpace(
                                  imageUrl: 'assets/kitchen.png',
                                  countSpecs: 1,
                                  nameSpecs: 'Kitchen',
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Happy Tenant',
                          style: titleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        HappyTenant(
                          imageUrl: 'assets/tenant1.png',
                          name: 'Masayoshi',
                          description: 'Cozy for Freelancer',
                          countStar: 5,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        HappyTenant(
                          imageUrl: 'assets/tenant2.png',
                          name: 'Aken Tell',
                          description: 'Feels like at home',
                          countStar: 4,
                        ),
                        SizedBox(
                          height: 138,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
