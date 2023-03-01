import 'package:airplane/UI/pages/choose_seat_page.dart';
import 'package:airplane/UI/widgets/custom_button.dart';
import 'package:airplane/UI/widgets/foto_item.dart';
import 'package:airplane/UI/widgets/interest_item.dart';
import 'package:airplane/models/destination_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatelessWidget {
  final DestinationModel destination;
  const DetailPage(this.destination, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(destination.imageUrl))),
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
                        // 'Lake Ciliwung',
                        destination.name,
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: semiBold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        // 'Tangerang',
                        destination.city,
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
                      // "4.6",
                      destination.rating.toString(),
                      style: whiteTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
              ],
            ),
          ),

          // NOTE: Description
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Note : About
                Text(
                  'About',
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                  style:
                      blackTextStyle.copyWith(fontWeight: regular, height: 2.0),
                ),

                // NOTE: PHOTO
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Photo',
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: const [
                    FotoItem(
                      imageUrl: 'assets/image_photo1.png',
                    ),
                    FotoItem(
                      imageUrl: 'assets/image_photo2.png',
                    ),
                    FotoItem(
                      imageUrl: 'assets/image_photo3.png',
                    ),
                  ],
                ),
                // NOTE: Interest
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Interest',
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    InterestItem(
                      title: 'Kids Park',
                    ),
                    InterestItem(
                      title: 'Honor Bridge',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InterestItem(
                      title: 'City Museum',
                    ),
                    InterestItem(
                      title: 'Central Mall',
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Note : Price & Book Button
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // 'IDR 2.500.000',
                        NumberFormat.currency(
                                locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                            .format(
                          destination.price,
                        ),
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'per orang',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                ),
                // Note : Book Button
                CustomButton(
                  title: 'Book Now',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseSeatPage(),
                        ));
                  },
                  width: 170,
                )
              ],
            ),
          )
        ]),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
          child:
              Stack(children: [backgroundImage(), customShadow(), content()])),
    );
  }
}
