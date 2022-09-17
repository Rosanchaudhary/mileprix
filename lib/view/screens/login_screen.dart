import 'package:flutter/material.dart';
import 'package:mileprix/view/screens/request_token_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/logo.png",
                height: 40,
                width: 174,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Welcome, Driver",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Color.fromRGBO(33, 33, 33, 1))),
              const Text("Login with username and token",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(33, 33, 33, 1))),
              const SizedBox(
                height: 30,
              ),
              const Text("username",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color.fromRGBO(33, 33, 33, 1))),
              const SizedBox(
                height: 4,
              ),
              TextField(
                decoration: InputDecoration(
                    isDense: true,
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28))),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                          builder: (context) => const RequestTokenScreen()));
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 87, 1, 1),
                      borderRadius: BorderRadius.circular(28)),
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
