
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Balance extends StatelessWidget {
  final String label;
  final CrossAxisAlignment alignment;

  const Balance({
    super.key,
    required this.label,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Row(
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
              const SizedBox(width: 5),
              const Icon(
                FontAwesomeIcons.eyeSlash,
                color: Colors.white,
                size: 13,
              ),
            ],
          ),
          const SizedBox(height: 7),
          const Text(
            '******', // Displaying only asterisks on the second row
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
