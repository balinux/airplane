import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  const CustomBottomNavigationItem(
      {super.key, required this.imageUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    // PageCubit pageCubit = context.read<PageCubit>();
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: BlocBuilder<PageCubit, int>(
        bloc: BlocProvider.of<PageCubit>(context),
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Image.asset(
                imageUrl,
                width: 24,
                height: 24,
                color: state == index ? kPrimaryColor : kGreyColor,
              ),
              // Container(
              //   width: 24,
              //   height: 24,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(image: AssetImage(imageUrl))),
              // ),
              Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: state == index ? kPrimaryColor : kTransparentColor,
                    borderRadius: BorderRadius.circular(18)),
              ),
            ],
          );
        },
      ),
    );
  }
}
