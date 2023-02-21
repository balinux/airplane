import 'package:airplane/UI/pages/bonus_page.dart';
import 'package:airplane/UI/pages/get_started_page.dart';
import 'package:airplane/UI/pages/main_page.dart';
import 'package:airplane/UI/pages/sign_up_page.dart';
import 'package:airplane/UI/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SplashPage(),
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main': (context) => const MainPage(),
        '/home': (context) => const MainPage()
      },
    );
  }
}
