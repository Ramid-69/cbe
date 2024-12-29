import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridContentAfterImage extends StatelessWidget {
  GridContentAfterImage({super.key});

  // Define a list of maps for each item with "text" and "icon" keys
  final List<Map<String, dynamic>> gridItems = [
    {"text": "Other Bank Transfer", "icon": FontAwesomeIcons.moneyBillTransfer},
    {"text": "Other Wallet Transfer", "icon": FontAwesomeIcons.wallet},
    {"text": "Quick Pay", "icon": FontAwesomeIcons.bolt},
    {"text": "Fuel Pay", "icon": FontAwesomeIcons.gasPump},
    {"text": "Condoinium Repayment", "icon": FontAwesomeIcons.building},
    {"text": "Money Request", "icon": FontAwesomeIcons.dollarSign},
    {"text": "Location", "icon": FontAwesomeIcons.locationDot},
    {"text": "Play and Win", "icon": FontAwesomeIcons.trophy},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: gridItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const[
              BoxShadow(
                color: Color.fromRGBO(128, 128, 128, 51), 
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    gridItems[index]["icon"],
                    color: const Color.fromRGBO(143, 39, 143, 1),
                    size: 20,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    gridItems[index]["text"],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}