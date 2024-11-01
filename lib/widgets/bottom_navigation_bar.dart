// import 'package:cbe/screens/cbe_beje_screen.dart';
// import 'package:cbe/screens/home_screen.dart';
// import 'package:cbe/screens/mini_apps_screen.dart';
// import 'package:cbe/screens/others_screen.dart';
// import 'package:cbe/screens/pay_screen.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';


// class BottomNavigationBar extends StatefulWidget {
//   const BottomNavigationBar({super.key});

//   @override
//   State<BottomNavigationBar> createState() => _BottomNavigationBarState();
// }

// class _BottomNavigationBarState extends State<BottomNavigationBar> {
//   int _currentIndex = 0;

//   // Define titles and screens for each tab
//   final List<String> _titles = ["Home", "Pay", "CBE Beje", "Mini Apps", "Others"];
//   final List<Widget> _screens = [
//     const HomeScreen(),     // Replace with your actual screen widgets
//     const PayScreen(),
//     const CbeBejeScreen(),
//     const MiniAppsScreen(),
//     const OthersScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_titles[_currentIndex]), // Display the title of the selected tab
//         backgroundColor: const Color.fromRGBO(143, 39, 143, 1),
//       ),
//       body: _screens[_currentIndex], // Display the screen corresponding to the selected tab
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: const Color.fromRGBO(143, 39, 143, 1),
//         height: 50,
//         index: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: const [
//           Icon(FontAwesomeIcons.houseUser, color: Colors.white),
//           Icon(FontAwesomeIcons.moneyBillTransfer, color: Colors.white),
//           Icon(FontAwesomeIcons.buildingColumns, color: Colors.white),
//           Icon(FontAwesomeIcons.cube, color: Colors.white),
//           Icon(FontAwesomeIcons.ellipsis, color: Colors.white),
//         ],
//       ),
//     );
//   }
// }
