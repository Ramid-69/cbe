
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cbe/widgets/balance.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage('assets/images/cbe.png'),
                width: 50,
              ),
               SizedBox(width: 10,),
              Text(
                'የኢትዮጵያ ንግድ ባንክ\nCommercial Bank of Ethiopia',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.phoneVolume,
                        size: 10,
                        color: Colors.yellow,
                      ),
                      Text(
                        '  +251960994***',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              AnimatedTextKit(
                isRepeatingAnimation: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Welcome back',
                    textStyle: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 13,
                    ),
                    speed: const Duration(milliseconds: 20),
                  ),
                  TypewriterAnimatedText(
                    'Asmare !',
                    textStyle: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 13,
                    ),
                    speed: const Duration(milliseconds: 20),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Balance(
                label: 'Balance (ETB)',
                alignment: CrossAxisAlignment.start,
              ),
              Balance(
                label: 'Reward',
                alignment: CrossAxisAlignment.end,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
