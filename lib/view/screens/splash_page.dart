import 'package:flutter/material.dart';
import 'package:mileprix/view/screens/login_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset("assets/logo.png"),
              Image.asset("assets/truck.png")
            ],
          ),
        ),
      ),
    );
  }
}
