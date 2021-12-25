import 'package:flutter/material.dart';
import 'package:login_logout_pages/pages/fourth_page.dart';
import 'package:login_logout_pages/pages/payment_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);
  static const String id = "third_page";

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Third Page", textAlign: TextAlign.center,),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: const Text("Payment"),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PaymentPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
