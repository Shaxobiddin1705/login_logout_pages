import 'package:flutter/material.dart';
import 'package:login_logout_pages/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _openHomePage(){
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(message: "You are successfully Logged In !!!")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Login Page",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sign In", style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "UserName:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Shaxobiddin",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Password:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "***********",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              MaterialButton(
                color: Colors.blue,
                child: const Text("LogIn"),
                onPressed: () {
                  _openHomePage();
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Text("Reset Password", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade600),),
            ],
          ),
        ),
      ),
    );
  }
}
