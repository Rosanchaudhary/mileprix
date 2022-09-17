import 'package:flutter/material.dart';
import 'package:mileprix/view/models/nav_model.dart';
import 'package:mileprix/view/screens/list_screen.dart';
import 'package:mileprix/view/screens/map_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  static const List<Widget> _widgetOptions = <Widget>[
    MapScreen(),
    ListScreen(),

  ];
  bool showAppBar = true;
  int _currentIndex = 0;
  final List _pageStack = [];

  void _pushPage(index) {
    if (_pageStack.isEmpty) {
      _pageStack.add(_currentIndex);
    }

    if (index == _currentIndex) {
      return;
    }

    if (_pageStack.contains(index) && _pageStack.length != 1) {
      _pageStack.remove(index);
    }

    if (!_pageStack.contains(_currentIndex)) {
      _pageStack.add(_currentIndex);
    }

    setState(() {
      _currentIndex = index;
    });
  }

  _popPage(BuildContext context) {
    if (_pageStack.isEmpty) {
      return Future<bool>.value(true);
    } else {
      int t = _pageStack.removeLast();
      setState(() {
        _currentIndex = (_currentIndex != t) ? t : _pageStack.removeLast();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _popPage(context),
      child: Scaffold(
        body: _widgetOptions[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(

            selectedItemColor: const Color.fromRGBO(255, 87, 1, 1),
            elevation: 0,
            currentIndex: _currentIndex,
            onTap: (i) {
              _pushPage(i);
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: allScreens.map((Screens screen) {
              return BottomNavigationBarItem(
                  icon: Icon(screen.icon),
                  backgroundColor: screen.color,
                  label: screen.label);
            }).toList()),
      ),
    );
  }
}