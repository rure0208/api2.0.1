// ignore_for_file: file_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'apple.dart';
import 'business.dart';

import 'tesla.dart';
import 'ventana.dart';

class Navegacion extends StatefulWidget {
  const Navegacion({Key? key}) : super(key: key);

  @override
  State<Navegacion> createState() => _NavegacionState();
}

class _NavegacionState extends State<Navegacion> {
  int _currentIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const MyApp(),
    const Business(),
    const Tesla(),
    const Apple()
  ];

  onItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _widgetOptions[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(255, 92, 103, 125),
        index: _currentIndex,
        height: 60,
        animationCurve: Curves.elasticOut,
        backgroundColor: const Color.fromARGB(240, 0, 24, 69),
        items: const <Widget>[
          Icon(
            Icons.home_rounded,
            size: 30,
            color: Colors.white,
          ),
          Icon(Icons.business, size: 30, color: Colors.white),
          Icon(Icons.speaker_phone_rounded, size: 30, color: Colors.white),
          Icon(Icons.apple, size: 30, color: Colors.white),
        ],
        onTap: onItemSelected,
      ),
    );
  }
}
