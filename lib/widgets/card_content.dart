import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                image: AssetImage('assets/images/cbe.png'),
                width: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              const Center(
                child: Text(
                  'የኢትዮጵያ ንግድ ባንክ\nCommercial Bank of Ethiopia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: media.width * 0.2),
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
                        size: 12,
                        color: Colors.yellow,
                      ),
                      Text(
                        '  +251960994***',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 12,
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
          SizedBox(
            height: media.height * 0.03,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Balance(ETB)",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          FontAwesomeIcons.eyeSlash,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    Text(
                      '******',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Reward(ETB)",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          FontAwesomeIcons.eyeSlash,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    Text(
                      '******',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
