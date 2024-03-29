import 'package:flutter/material.dart';

class FotoItem extends StatelessWidget {
  final String imageUrl;
  const FotoItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(imageUrl))),
    );
  }
}
