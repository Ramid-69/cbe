import 'package:cbe/widgets/card_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CbeCard extends StatelessWidget {
  const CbeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Flexible(
      flex: 0,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 3),
            child: Container(
              width: media.width * 0.9,
              height: media.height * 0.26,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color:
                    Color.fromRGBO(114, 17, 114, 1), // Purple background color
              ),
              child: const CardContent(),
            ),
          ),
          const Positioned(
              right: 0,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromRGBO(143, 39, 143, 1),
                child: Icon(
                  FontAwesomeIcons.paintbrush,
                  color: Colors.white,
                  size: 18,
                ),
              ))
        ],
      ),
    );
  }
}
