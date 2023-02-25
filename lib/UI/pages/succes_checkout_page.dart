import 'package:airplane/UI/widgets/custom_button.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(bottom: 80),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_success.png'))),
            ),
            Text(
              'Well Booked 😍',
              style:
                  blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              margin: const EdgeInsets.only(top: 50),
              title: 'My Bookings',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
              width: 220,
            )
          ],
        ),
      ),
    );
  }
}
