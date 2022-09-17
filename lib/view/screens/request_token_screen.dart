import 'package:flutter/material.dart';
import 'package:mileprix/view/screens/token_screen.dart';

class RequestTokenScreen extends StatelessWidget {
  const RequestTokenScreen({super.key});

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
              const Text("Request for the token",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(33, 33, 33, 1))),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TokenScreen()));
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 87, 1, 1),
                      borderRadius: BorderRadius.circular(28)),
                  child: const Center(
                    child: Text(
                      "REQUEST TOKEN",
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
