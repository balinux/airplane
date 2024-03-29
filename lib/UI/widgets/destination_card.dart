import 'package:airplane/UI/pages/detail_page.dart';
import 'package:airplane/models/destination_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destination;

  const DestinationCard({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(destination),
          )),
      child: Container(
        width: 200,
        height: 323,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        margin: EdgeInsets.only(left: defaultMargin),
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 180,
            height: 220,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image:
                    DecorationImage(image: NetworkImage(destination.imageUrl))),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 30,
                width: 65,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(18)),
                    color: kWhiteColor),
                child: Row(
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
                      destination.rating.toString(),
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(destination.name,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium)),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(destination.city,
                      style: blackTextStyle.copyWith(fontWeight: light)),
                ],
              ))
        ]),
      ),
    );
  }
}
