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
  int _currentIndex = 0; // Variable to keep track of the currently selected index

  // List of screens to display based on selected navigation item
  final List<Widget> _screens = [
    const HomeScreen(),
    const PayScreen(),
    const CbeBejeScreen(),
    const MiniAppsScreen(),
    const OthersScreen(),
  ];

  // List of icon labels
  final List<String> _labels = [
    "Home",
    "Pay",
    "CBE Beje",
    "Mini Apps",
    "Others"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex], // Display the current screen based on the index
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: const Color.fromRGBO(143, 39, 143, 1),
        height: 70, // Increased height for better visibility
        index: _currentIndex, // Set the current index
        items: List.generate(_labels.length, (index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                _getIcon(index),
                color: Colors.white,
                size: 20, // Adjust icon size as needed
              ),
              // Only show the label if it's not the currently selected icon
              if (_currentIndex != index)
                Column(
                  children: [
                    const SizedBox(height: 4), // Space between icon and label
                    Text(
                      _labels[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
            ],
          );
        }),
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });
        },
      ),
    );
  }

  // Method to get the corresponding icon based on the index
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
        return FontAwesomeIcons.houseUser; // Default icon
    }
  }
}
