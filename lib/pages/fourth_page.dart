import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);
  static const String id = "fourth_page";

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fourth Page", textAlign: TextAlign.center,),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          child: const Text("FourthPage"),
          onPressed: (){
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SecondPage()));
          },
        ),
      ),
    );
  }
}
