import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridContent extends StatelessWidget {
  GridContent({super.key});

  // Define grid icons and labels
  final List<IconData> gridIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.creditCard,
    FontAwesomeIcons.buildingColumns,
    FontAwesomeIcons.grip,
    FontAwesomeIcons.elementor,
    FontAwesomeIcons.mugSaucer,
    FontAwesomeIcons.book,
    FontAwesomeIcons.calendar
  ];

  final List<String> gridLabel = [
    "Home",
    "Payments",
    "Banking",
    "Settings",
    "Menu",
    "Coffee",
    "Library",
    "Calendar"
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
        childAspectRatio: 1.3,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                gridIcons[index],
                color: const Color.fromRGBO(143, 39, 143, 1),
              ),
              Text(
                gridLabel[index],
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
