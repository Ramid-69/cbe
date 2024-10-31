
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:cbe/widgets/cbe_card.dart';
import 'package:cbe/widgets/grid_content.dart';
import 'package:cbe/widgets/home_screen_app_bar.dart';
import 'package:cbe/widgets/image_slider_indicator.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<String> carouselImages = const [
    'assets/images/home_ban1.jpg',
    'assets/images/home_ban2.jpg',
    'assets/images/home_ban3.jpg',
    'assets/images/home_ban4.jpg',
    'assets/images/home_ban5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(143, 39, 143, 1),
                  Color.fromRGBO(143, 39, 143, 0.3),
                  Colors.white54,
                  Colors.white,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const HomeAppBar(),
                const Divider(
                  color: Colors.white,
                  thickness: 0.2,
                ),
                const CbeCard(),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                          child: Column(
                            children: [
                              const SmallHeader(
                                label: 'QUICK ACCESS',
                              ),
                              const SmallHeader(
                                label: 'Transaction Detail',
                                mainAxisAlignment: MainAxisAlignment.end,
                                doesItHaveIcon: true,
                              ),
                              GridContent(),
                              const SizedBox(
                                height: 30,
                              ),
                              CarouselSlider(
                                options: CarouselOptions(
                                  aspectRatio: 39 / 9,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                ),
                                items: carouselImages.map((image) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                        width: MediaQuery.of(context).size.width,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Image(image: AssetImage(image)),
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                              ImageSliderIndicator(
                                carouselImages: carouselImages,
                                currentIndex: _currentIndex,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(143, 39, 143, 1),
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.qrcode,
          color: Colors.white,
        ),
      ),
    );
  }
}
