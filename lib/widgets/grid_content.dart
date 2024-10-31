import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridContent extends StatelessWidget {
  GridContent({super.key});

  // Define grid icons and labels
  final List<IconData> gridIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.moneyBillTransfer,
    FontAwesomeIcons.buildingColumns,
    FontAwesomeIcons.phone,
    FontAwesomeIcons.moneyBill,
    FontAwesomeIcons.wifi,
    FontAwesomeIcons.calendarDays,
    FontAwesomeIcons.wandMagic  
  ];

  final List<String> gridLabel = [
    "Linked Bank Account",
    "Send Money",
    "To CBE Account",
    "Airtime",
    "Cash Out",
    "Airtime Package",
    "Scheduled Pay",
    "MagicPay"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: gridIcons.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 15,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: SingleChildScrollView( 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  gridIcons[index],
                  color: const Color.fromRGBO(143, 39, 143, 1),
                  size: 24, // Adjust icon size as needed
                ),
                const SizedBox(height: 8),
                Text(
                  gridLabel[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 10, // Adjust text size to fit
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
