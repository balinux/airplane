import 'package:airplane/UI/widgets/custom_button.dart';
import 'package:airplane/UI/widgets/seat_item.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 6),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_available.png'))),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 6, left: 10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_selected.png'))),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 6, left: 10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_unavailable.png'))),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    // select seat
    Widget selectSeat() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 22),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(children: [
          // seat indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
              Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  )),
            ],
          ),

          // seat 1
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 1,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '1',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 1,
                ),
              ],
            ),
          ),

          //  seat 2
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 2,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '2',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),
          //  seat 3
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 1,
                ),
                SeatItem(
                  status: 1,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '3',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
          ),

          //  seat 4
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '4',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
          ),

          //  seat 5
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                      child: Text(
                    '5',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )),
                ),
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),

          // Note YOur Seat
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'A1, D1, A3, B3',
                    style: blackTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  ),
                ]),
          ),

          // Note Total
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: purpleTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                ]),
          )
        ]),
      );
    }

    Widget checkOutButton() {
      return CustomButton(
        title: 'Continue to Checkout',
        onPressed: () {},
        margin: const EdgeInsets.only(top: 30, bottom: 46),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [title(), seatStatus(), selectSeat(), checkOutButton()],
      ),
    );
  }
}
