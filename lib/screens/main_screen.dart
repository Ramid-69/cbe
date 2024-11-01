import 'package:cbe/screens/cbe_beje_screen.dart';
import 'package:cbe/screens/home_screen.dart';
import 'package:cbe/screens/mini_apps_screen.dart';
import 'package:cbe/screens/others_screen.dart';
import 'package:cbe/screens/pay_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const PayScreen(),
    const CbeBejeScreen(),
    const MiniAppsScreen(),
    const OthersScreen(),
  ];

  final List<String> _labels = [
    "Home",
    "Pay",
    "CBE Beje",
    "Mini Apps",
    "Others",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.9), // Adjusted to avoid transparency issues
        color: const Color.fromRGBO(143, 39, 143, 1),
        height: 60,
        index: _currentIndex,
        items: List.generate(_labels.length, (index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                _getIcon(index),
                color: Colors.white,
                size: 24,
              ),
              if (_currentIndex == index)
                Text(
                  _labels[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          );
        }),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return FontAwesomeIcons.houseUser;
      case 1:
        return FontAwesomeIcons.creditCard;
      case 2:
        return FontAwesomeIcons.buildingColumns;
      case 3:
        return FontAwesomeIcons.grip;
      case 4:
        return FontAwesomeIcons.elementor;
      default:
        return FontAwesomeIcons.houseUser;
    }
  }
}
