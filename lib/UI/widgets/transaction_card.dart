import 'package:airplane/UI/widgets/booking_detail_item.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
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
                    image: NetworkImage(transaction.destination.imageUrl))),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // 'Lake Ciliwung',
                  transaction.destination.name,
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
                ),
                Text(
                  // 'tangerang',
                  transaction.destination.city,
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
                // '5.6',
                transaction.destination.rating.toString(),
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
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
        ),

        // Note Detail Item
        BookingDetailItem(
          title: 'Traveler',
          valueColor: kBlackColor,
          valueText: '${transaction.amountOfTraveler} Person',
        ),
        BookingDetailItem(
          title: 'Seat',
          valueColor: kBlackColor,
          valueText: transaction.selectedSeats,
        ),
        BookingDetailItem(
          title: 'Insurance',
          valueColor: transaction.insurance ? kGreenColor : kRedColor,
          valueText: transaction.insurance ? 'YES' : 'NO',
        ),
        BookingDetailItem(
          title: 'Refundable',
          valueColor: transaction.refundable ? kGreenColor : kRedColor,
          valueText: transaction.refundable ? 'YES' : 'NO',
        ),
        BookingDetailItem(
          title: 'VAT',
          valueColor: kBlackColor,
          valueText: '${(transaction.vat * 100).toStringAsFixed(0)} %',
        ),
        BookingDetailItem(
          title: 'Price',
          valueColor: kBlackColor,
          valueText: NumberFormat.currency(
                  locale: 'id', symbol: 'IDR ', decimalDigits: 0)
              .format(
            transaction.price,
          ),
        ),
        BookingDetailItem(
          title: 'Grand Total',
          valueColor: kBlackColor,
          valueText: NumberFormat.currency(
                  locale: 'id', symbol: 'IDR ', decimalDigits: 0)
              .format(
            transaction.grandTotal,
          ),
        )
      ]),
    );
  }
}
