import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screens {
  const Screens(this.label, this.icon, this.color);
  final String label;
  final IconData icon;
  final MaterialColor color;
}

const List<Screens> allScreens = <Screens>[
  Screens('Map View', Icons.map_outlined, Colors.pink),
  Screens('List View', CupertinoIcons.list_dash, Colors.orange),

];