
import 'package:flutter/material.dart';

class SmallHeader extends StatelessWidget {
  final String label;
  final MainAxisAlignment mainAxisAlignment;
  final bool doesItHaveIcon;

  const SmallHeader({
    super.key,
    required this.label,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.doesItHaveIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 95, 12, 110),
            fontWeight: FontWeight.w500,
          ),
        ),
        doesItHaveIcon
            ? const Icon(
                Icons.arrow_right,
                color: Colors.purple,
              )
            : const SizedBox(),
      ],
    );
  }
}
