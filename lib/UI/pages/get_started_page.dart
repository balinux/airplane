import 'package:airplane/UI/widgets/custom_button.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image_get_started.png'))),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Fly Like a Bird",
                style:
                    whiteTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Explore new world with us and let\nyourself get an amazing experiences',
                style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                title: 'Get Started',
                width: 220,
                margin: EdgeInsets.only(top: 50, bottom: 80),
                onPressed: () => Navigator.pushNamed(context, '/sign-up'),
              )
            ],
          ),
        )
      ]),
    );
  }
}
