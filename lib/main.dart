import 'package:flutter/material.dart';
import 'package:login_logout_pages/pages/first_page.dart';
import 'package:login_logout_pages/pages/fourth_page.dart';
import 'package:login_logout_pages/pages/home_page.dart';
import 'package:login_logout_pages/pages/login_page.dart';
import 'package:login_logout_pages/pages/payment_page.dart';
import 'package:login_logout_pages/pages/second_page.dart';
import 'package:login_logout_pages/pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        HomePage.id: (context) =>  HomePage(message: '',),
        FirstPage.id: (context) => const FirstPage(),
        SecondPage.id: (context) => const SecondPage(),
        ThirdPage.id: (context) => const ThirdPage(),
        FourthPage.id: (context) => const FourthPage(),
        PaymentPage.id: (context) => const PaymentPage(),
      },
    );
  }
}
