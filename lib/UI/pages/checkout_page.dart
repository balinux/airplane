import 'package:airplane/UI/widgets/booking_detail_item.dart';
import 'package:airplane/UI/widgets/custom_button.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CehckOutPage extends StatelessWidget {
  const CehckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(children: [
          Container(
            width: 291,
            height: 65,
            margin: EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_checkout.png'))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CGK',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    'Tangerang',
                    style: blackTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TLC',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    'Ciliwung',
                    style: blackTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
            ],
          )
        ]),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Note : Destination tile
          Row(children: [
            Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_destination1.png'))),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  Text(
                    'tangerang',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
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
                  '5.6',
                  style: blackTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ]),

          // NOTE BOOKING DETAIL
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
          ),

          // Note Detail Item
          BookingDetailItem(
            title: 'Traveler',
            valueColor: kBlackColor,
            valueText: '2 Person',
          ),
          BookingDetailItem(
            title: 'Seat',
            valueColor: kBlackColor,
            valueText: 'A3, B3',
          ),
          BookingDetailItem(
            title: 'Insurance',
            valueColor: kGreenColor,
            valueText: 'Yes',
          ),
          BookingDetailItem(
            title: 'Refundable',
            valueColor: kRedColor,
            valueText: 'No',
          ),
          BookingDetailItem(
            title: 'VAT',
            valueColor: kBlackColor,
            valueText: '45%',
          ),
          BookingDetailItem(
            title: 'Price',
            valueColor: kBlackColor,
            valueText: 'IDR 8.500.690',
          ),
          BookingDetailItem(
            title: 'Grand Total',
            valueColor: kBlackColor,
            valueText: 'IDR 12.000.000',
          ),
        ]),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(children: [
                Container(
                  width: 100,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image_card.png'))),
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(right: 6),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/icon_plane.png'))),
                          ),
                          Text(
                            'Pay',
                            style: whiteTextStyle.copyWith(
                                fontSize: 16, fontWeight: medium),
                          )
                        ]),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      );
    }

    Widget payNowButton() {
      return CustomButton(
        title: 'Pay Now',
        onPressed: () {},
        margin: EdgeInsets.only(top: 30),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30, bottom: 30),
        child: Text(
          "Terms and Conditions",
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          route(),
          bookingDetails(),
          paymentDetails(),
          payNowButton(),
          tacButton()
        ],
      ),
    );
  }
}