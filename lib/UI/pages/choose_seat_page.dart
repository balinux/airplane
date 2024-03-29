import 'package:airplane/UI/pages/checkout_page.dart';
import 'package:airplane/UI/widgets/custom_button.dart';
import 'package:airplane/UI/widgets/seat_item.dart';
import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/models/destination_model.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;

  const ChooseSeatPage(this.destination, {super.key});

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
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
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
                      id: 'A1',
                      isAvailable: false,
                    ),
                    SeatItem(
                      id: 'B1',
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
                      id: 'C1',
                    ),
                    SeatItem(
                      id: 'D1',
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
                      id: 'A2',
                    ),
                    SeatItem(
                      id: 'B2',
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
                      id: 'C2',
                    ),
                    SeatItem(
                      id: 'D2',
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
                      id: 'A3',
                    ),
                    SeatItem(
                      id: 'B3',
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
                      id: 'C3',
                    ),
                    SeatItem(
                      id: 'D3',
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
                      id: 'A4',
                    ),
                    SeatItem(
                      id: 'B4',
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
                      id: 'C4',
                    ),
                    SeatItem(
                      id: 'D4',
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
                      id: 'E1',
                    ),
                    SeatItem(
                      id: 'E2',
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
                      id: 'E3',
                    ),
                    SeatItem(
                      id: 'E4',
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
                      SizedBox(
                        width: defaultMargin,
                      ),
                      Expanded(
                        child: Text(
                          // 'A1, D1, A3, B3',
                          state.join(', '),
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                          style: blackTextStyle.copyWith(
                              fontWeight: medium, fontSize: 16),
                        ),
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
                        // 'IDR 540.000.000',
                        NumberFormat.currency(
                                locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                            .format(
                          state.length * destination.price,
                        ),
                        style: purpleTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                    ]),
              )
            ]),
          );
        },
      );
    }

    Widget checkOutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            title: 'Continue to Checkout',
            onPressed: () {
              int price = destination.price * state.length;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CehckOutPage(TransactionModel(
                        destination: destination,
                        amountOfTraveler: state.length,
                        selectedSeats: state.join(', '),
                        insurance: true,
                        refundable: false,
                        price: destination.price * state.length,
                        grandTotal: price + (price * 0.45).toInt(),
                        vat: 0.45)),
                  ));
            },
            margin: const EdgeInsets.only(top: 30, bottom: 46),
          );
        },
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
