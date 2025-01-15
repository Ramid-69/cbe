import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridContent extends StatelessWidget {
  GridContent({super.key});

  // List of grid items with both icon and label defined together
  final List<Map<String, dynamic>> gridItems = [
    {"text": "Linked Bank Acct", "icon": FontAwesomeIcons.house},
    {"text": "Send Money", "icon": FontAwesomeIcons.moneyBillTransfer},
    {"text": "To CBE Acct", "icon": FontAwesomeIcons.buildingColumns},
    {"text": "Air Time", "icon": FontAwesomeIcons.phone},
    {"text": "Cash Out", "icon": FontAwesomeIcons.moneyBill},
    {"text": "Airtime Package", "icon": FontAwesomeIcons.wifi},
    {"text": "Scheduled Pay", "icon": FontAwesomeIcons.calendarDays},
    {"text": "MagicPay", "icon": FontAwesomeIcons.wandMagic},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: gridItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 12,
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
                color:Color.fromRGBO(128, 128, 128, 51), // Equivalent to Colors.grey.withOpacity(0.2)
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