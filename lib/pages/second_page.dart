import 'package:flutter/material.dart';
import 'package:login_logout_pages/pages/third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const String id = "second_page";

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Second Page", textAlign: TextAlign.center,),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: const Text("ThirdPage"),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ThirdPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
