import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  List<Map<String, dynamic>> payArr = [
    {
      "index": "1",
      "name": "Pay Bill",
      "about": "To pay your school, entertainment, and government utilities",
      "icon": FontAwesomeIcons.receipt,
    },
    {
      "index": "2",
      "name": "Traffic Penalty",
      "about": "To pay your traffic penalty, please use this section",
      "icon": FontAwesomeIcons.carBurst,
    },
    {
      "index": "3",
      "name": "Electricity",
      "about": "To settle your electric bill utility, use this section",
      "icon": FontAwesomeIcons.bolt,
    },
    {
      "index": "4",
      "name": "Water Supply",
      "about":
          "To close your monthly household water consumption, use this section",
      "icon": FontAwesomeIcons.droplet,
    },
    {
      "index": "5",
      "name": "Telecom",
      "about": "To pay month,daily or yearly telecoms, use this section",
      "icon": FontAwesomeIcons.phone,
    },
    {
      "index": "6",
      "name": "Fundraising",
      "about":
          "Donate,give to those who have no one.Help non-profit organizations to flourish",
      "icon": FontAwesomeIcons.handHoldingHeart,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Pay Bill',
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
              const SizedBox(height: 30),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: payArr.length,
                itemBuilder: (context, index) {
                  var mObj = payArr[index] as Map? ?? {};
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
                                  color: Colors.purple,
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

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text for the item name
                                    Text(
                                      mObj["name"] ?? "",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      mObj["about"] ?? "",
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 73, 73, 73),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.purple,
                              ),
                            ],
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
