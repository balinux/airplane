import 'package:airplane/UI/widgets/custom_button.dart';
import 'package:airplane/UI/widgets/custom_text_form_field.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
          margin: const EdgeInsets.only(top: 30),
          child: Text(
            'Join us and get\nyour next jouney',
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ));
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          hintText: 'Your Full Name',
          title: 'Full Name',
          controller: nameController,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          hintText: 'Your Email Address',
          title: 'Email',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          hintText: 'Your Password',
          title: 'Password',
          obsecureText: true,
          controller: passwordController,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          hintText: 'Your Hobby',
          title: 'Hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          "Terms and Conditions",
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
