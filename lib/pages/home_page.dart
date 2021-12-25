import 'package:flutter/material.dart';
import 'package:login_logout_pages/pages/first_page.dart';
import 'package:login_logout_pages/pages/login_page.dart';

class HomePage extends StatefulWidget {
  late String message;
  static const String id = "home_page";

   HomePage({Key? key, required this.message}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool loginMessage = true;

  Future<void> _viewMessage() async{
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      loginMessage = false;
    });
  }

  @override
  void initState() {
    loginMessage = widget.message != null ? true : false;
    super.initState();
    _viewMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Home Page", textAlign: TextAlign.center,),
        ),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: const Text("First Page"),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const FirstPage()));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  child: const Text("Another page"),
                  color: Colors.blue,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          if (loginMessage) Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Container(
              alignment: Alignment.center,
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 7)
                ]
              ),
              child: Text(widget.message),
            ),
          ) else const SizedBox.shrink()
        ],
      ),
    );
  }
}
