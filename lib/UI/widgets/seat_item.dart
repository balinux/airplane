import 'package:airplane/cubit/seat_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  // Note 0.availabe, 1. selected, 2. unavailable
  final String id;
  final bool isAvailable;

  const SeatItem({super.key, this.isAvailable = true, required this.id});

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.read<SeatCubit>().isSelected(id);
    backgroundColor() {
      // jika tidak available returk kunvail

      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
            child: Text(
          'YOU',
          style: whiteTextStyle.copyWith(fontWeight: semiBold),
        ));
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            color: backgroundColor(),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: borderColor(), width: 2)),
        child: child(),
      ),
    );
  }
}
