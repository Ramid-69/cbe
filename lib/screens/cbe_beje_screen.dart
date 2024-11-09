import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CbeBejeScreen extends StatefulWidget {
  const CbeBejeScreen({super.key});

  @override
  State<CbeBejeScreen> createState() => _CbeBejeScreenState();
}

class _CbeBejeScreenState extends State<CbeBejeScreen> {
  List<Map<String, dynamic>> payArr = [
    {
      "index": "1",
      "name": "Micro Saving",
      "about": "Save money and earn 7% interest.",
      "icon": FontAwesomeIcons.buildingColumns,
    },
    {
      "index": "2",
      "name": "Micro Loan",
      "about": "Let's assist to process a micro loan easily.",
      "icon": FontAwesomeIcons.buildingColumns,
    },
    {
      "index": "3",
      "name": "Fixed Saving",
      "about": "Earn more interest(8% +) by saving using CBEBirr.",
      "icon": FontAwesomeIcons.buildingColumns,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'CBEBeje',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(143, 39, 143, 1),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                'EN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {
            // Add your search functionality here
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'CBE\n',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(149, 155, 147, 74),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Beje\n',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 0.7,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: payArr.length,
                itemBuilder: (context, index) {
                  var mObj = payArr[index];
                  return InkWell(
                    onTap: () {
                      // Navigate to the respective screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => mObj["screen"] ?? Container(),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        // Main content container
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 20,
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              // Circular background for icon/image
                              Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 247, 231, 206),
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    mObj["icon"] as IconData,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              // Column for the name and about text
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text for the item name
                                    Text(
                                      mObj["name"] ?? "",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    // Text for the about description
                                    Text(
                                      mObj["about"] ?? "",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Positioned arrow outside the main container
                        const Positioned(
                          right: 10,
                          top: 32,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
