import 'package:airplane/models/destination_model.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int amountOfTraveler;
  final String selectedSeats;
  final bool insurance;
  final bool refunable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel(
      {required this.destination,
      this.amountOfTraveler = 0,
      this.selectedSeats = '',
      this.insurance = false,
      this.refunable = false,
      this.vat = 0,
      this.price = 0,
      this.grandTotal = 0});

  @override
  // TODO: implement props
  List<Object?> get props => [
        destination,
        amountOfTraveler,
        selectedSeats,
        insurance,
        refunable,
        vat,
        price,
        grandTotal
      ];
}