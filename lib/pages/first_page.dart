import 'package:flutter/material.dart';
import 'package:login_logout_pages/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);
  static const String id = "first_page";

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("First Page", textAlign: TextAlign.center,),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: const Text("SecondPage"),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SecondPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
