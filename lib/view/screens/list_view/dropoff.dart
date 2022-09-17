import 'package:flutter/material.dart';
import 'package:mileprix/view/screens/list_view/all.dart';

class Dropoff extends StatelessWidget {
  const Dropoff({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 10,
      ),
      child: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search),
                isDense: true,
                labelText: "Search Orders",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
          ),
          const DetailCard(
            isPickOff: false,
          ),

        ],
      ),
    );
  }
}