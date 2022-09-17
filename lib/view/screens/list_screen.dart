import 'package:flutter/material.dart';
import 'package:mileprix/view/screens/list_view/all.dart';
import 'package:mileprix/view/screens/list_view/dropoff.dart';
import 'package:mileprix/view/screens/list_view/pickoff.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          //shape:const Border(bottom: BorderSide(color: Colors.black,width: 0.5)),
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(12), // Creates border
              color: const Color.fromRGBO(255, 87, 1, 1),
            ),
            tabs: [
              const Tab(
                child: Text(
                  "All",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      size: 14,
                    ),
                    Text(
                      "Pick Off",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      size: 14,
                    ),
                    Text(
                      "Drop Off",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          title: Image.asset(
            "assets/logo.png",
            height: 30,
            width: 130,
          ),

          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ))
          ],
        ),
        body: const TabBarView(
          children: [All(), Pickoff(), Dropoff()],
        ),
      ),
    );
  }
}
