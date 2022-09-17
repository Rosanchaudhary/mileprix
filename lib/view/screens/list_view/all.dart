import 'package:flutter/material.dart';

class All extends StatelessWidget {
  const All({super.key});

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
            isPickOff: true,
          ),
          const DetailCard(
            isPickOff: false,
          ),
        ],
      ),
    );
  }
}

class DetailCard extends StatelessWidget {
  final bool isPickOff;
  const DetailCard({Key? key, required this.isPickOff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        height: 224,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        color: isPickOff
                            ? const Color.fromRGBO(255, 87, 1, 1)
                            : const Color.fromRGBO(45, 158, 48, 1),
                        borderRadius: BorderRadius.circular(28)),
                    child: Center(
                      child: Text(
                        isPickOff ? "Pickup" : "Drop Off",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 97,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(25, 28, 82, 1),
                        borderRadius: BorderRadius.circular(28)),
                    child: const Center(
                      child: Text(
                        "ETA 20 Mins",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Text("ORDER ID #464113",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: Color.fromRGBO(33, 33, 33, 1))),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Color.fromRGBO(255, 87, 1, 1),
                  ),
                  Text("8 Goldie Street Cross River",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color.fromRGBO(33, 33, 33, 1))),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.person,
                    color: Color.fromRGBO(255, 87, 1, 1),
                  ),
                  Text("John Doe",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color.fromRGBO(33, 33, 33, 1))),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.production_quantity_limits,
                    color: Color.fromRGBO(255, 87, 1, 1),
                  ),
                  Text("L: 12 CM    W: 12 CM    H: 18 CM",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color.fromRGBO(33, 33, 33, 1))),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.monitor_weight,
                    color: Color.fromRGBO(255, 87, 1, 1),
                  ),
                  Text("30 KG",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Color.fromRGBO(33, 33, 33, 1))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
