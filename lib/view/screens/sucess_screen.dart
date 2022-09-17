import 'package:flutter/material.dart';
import 'package:mileprix/view/screens/nav_screen.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.check_circle,
            color: Color.fromRGBO(255, 87, 1, 1),
            size: 65,
          ),
          Text("Login Successful",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Color.fromRGBO(33, 33, 33, 1))),
          Text("You are successfully logged in toyour accounnt. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(33, 33, 33, 1))),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal:12.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NavScreen()));
          },
          child: Container(
            height: 56,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 87, 1, 1),
                borderRadius: BorderRadius.circular(28)),
            child: const Center(
              child: Text(
                "CONTINUE",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
