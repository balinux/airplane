import 'package:airplane/models/destination_model.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final String id;
  final DestinationModel destination;
  final int amountOfTraveler;
  final String selectedSeats;
  final bool insurance;
  final bool refunable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel(
      {this.id = '',
      required this.destination,
      this.amountOfTraveler = 0,
      this.selectedSeats = '',
      this.insurance = false,
      this.refunable = false,
      this.vat = 0,
      this.price = 0,
      this.grandTotal = 0});

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) =>
      TransactionModel(
          id: id,
          destination: DestinationModel.fromJson(
              json['destination']['id'], json['destination']),
          amountOfTraveler: json['amountOfTraveler'],
          selectedSeats: json['selectedSeats'],
          insurance: json['insurance'],
          refunable: json['refunable'],
          vat: json['vat'],
          price: json['price'],
          grandTotal: json['grandTotal']);

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
