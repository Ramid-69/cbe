import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridContent1 extends StatelessWidget {
  GridContent1({super.key});

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
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 1,
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
                    size: 25,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    gridItems[index]["text"],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
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
