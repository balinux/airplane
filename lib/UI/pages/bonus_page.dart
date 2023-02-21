import 'package:airplane/UI/widgets/custom_button.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        padding: EdgeInsets.all(defaultMargin),
        width: 300,
        height: 211,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/image_card.png')),
            boxShadow: [
              BoxShadow(
                  color: kPrimaryColor.withOpacity(.5),
                  blurRadius: 50,
                  offset: const Offset(0, 10))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        "Rio Juniyantara ",
                        style: whiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_plane.png'))),
                ),
                Text(
                  'Pay',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                )
              ],
            ),
            // balance
            const SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(fontWeight: light),
            ),
            // const SizedBox(
            //   height: 41,
            // ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 26),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          "Big Bonus 🎉",
          style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget subTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          "We give you early credit so that\nyou can buy a flight ticket",
          style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
          title: 'Start Fly Now',
          margin: const EdgeInsets.only(top: 50),
          width: 220,
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          });
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [bonusCard(), title(), subTitle(), startButton()]),
      ),
    );
  }
}
