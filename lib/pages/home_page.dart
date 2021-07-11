import 'package:flutter/material.dart';
import 'package:golekos/pages/floating_button.dart';
import 'package:golekos/pages/most_list.dart';
import 'package:golekos/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Helo',
                              style: titleTextStyle.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Shayna Far',
                              style: titleTextStyle.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/user.png',
                          width: 55,
                          height: 55,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width - (2 * 22),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Find your next home',
                              style: subTitleTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Icon(
                              Icons.search,
                              color: greyColor,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width - (2 * 22),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/card_payment.png',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icon.png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Payment Safety',
                                style: subTitleTextStyle.copyWith(
                                  color: whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Kindly only use our official card',
                                style: subTitleTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: whiteColor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Text(
                    'Most People Go',
                    style: titleTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - (2 * 22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: whiteColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          MostList(
                            imageUrl: 'assets/kos1.png',
                            kozName: 'Fukko Cozy',
                            kozType: 'Wanita',
                            price: 55,
                          ),
                          Divider(),
                          MostList(
                            imageUrl: 'assets/kos2.png',
                            kozName: 'Blue Fast',
                            kozType: 'Umum',
                            price: 21,
                          ),
                          Divider(),
                          MostList(
                            imageUrl: 'assets/kos3.png',
                            kozName: 'Jamaixa IIX',
                            kozType: 'Pria',
                            price: 49,
                          ),
                          Divider(),
                          MostList(
                            imageUrl: 'assets/kos4.png',
                            kozName: 'Yaka Past',
                            kozType: 'Wanita',
                            price: 82,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
