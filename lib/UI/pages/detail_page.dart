import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image_destination1.png'))),
      );
    }

    Widget customShadow() {
      return Container(
          height: 214,
          width: double.infinity,
          margin: EdgeInsets.only(top: 236),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(.95)
              ])));
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Column(children: [
          // NOTE: Emblem
          Container(
            height: 24,
            width: 108,
            margin: const EdgeInsets.only(top: 60),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_emblem.png'))),
          ),

          // NOTE: Title
          Container(
            margin: const EdgeInsets.only(top: 256),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: semiBold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Tangerang',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: light),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_star.png'))),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "4.6",
                      style: whiteTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(children: [backgroundImage(), customShadow(), content()]),
    );
  }
}
