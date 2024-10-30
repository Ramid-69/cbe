import 'package:cbe/screens/home_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: const Color.fromRGBO(143, 39, 143, 1),
        height: 50,
        index: 0,
        items: const [
          Icon(
            FontAwesomeIcons.houseUser,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.creditCard,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.buildingColumns,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.grip,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.elementor,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          // Handle navigation based on index
        },
      ),
    );
  }
}
