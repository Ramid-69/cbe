import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OthersScreen extends StatefulWidget {
  const OthersScreen({super.key});

  @override
  State<OthersScreen> createState() => _OthersScreenState();
}

class _OthersScreenState extends State<OthersScreen> {
  List<Map<String, dynamic>> otherArr = [
    {
      "index": "1",
      "name": "All Balances",
      "icon": FontAwesomeIcons.balanceScale,
    },
    {
      "index": "2",
      "name": "Pin Reset",
      "icon": FontAwesomeIcons.key,
    },
    {
      "index": "3",
      "name": "Change PIN",
      "icon": FontAwesomeIcons.lock,
    },
    {
      "index": "4",
      "name": "Biometrics",
      "icon": FontAwesomeIcons.fingerprint,
    },
    {
      "index": "5",
      "name": "Invite Friends",
      "icon": FontAwesomeIcons.userFriends,
    },
    {
      "index": "6",
      "name": "About Us",
      "icon": FontAwesomeIcons.infoCircle,
    },
    {
      "index": "7",
      "name": "FAQ",
      "icon": FontAwesomeIcons.questionCircle,
    },
    {
      "index": "8",
      "name": "CBEBeje Feedback",
      "icon": FontAwesomeIcons.commentDots,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    backgroundColor: const Color.fromRGBO(143, 39, 143, 1),
                    centerTitle: true,
                    elevation: 0,
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      'Others',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    actions: const [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Text(
                          "EN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                    expandedHeight: media.width * 0.45,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).padding.top +
                                kToolbarHeight +
                                10, // Adjusted padding
                            left: 20,
                            right: 20,
                            bottom: 20,
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15, // Adjusted vertical padding
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 126, 37, 126),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Row(
                              children: [
                                CircleAvatar(
                                  child: Icon(
                                    Icons.person,
                                    size: 40,
                                    color: Color.fromARGB(255, 126, 37, 126),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ), // Adjusted space between avatar and text
                                Text(
                                  'Asmare A******',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(), // This will push the QR code to the far right
                                Icon(
                                  Icons.qr_code,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ];
              },
              body: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Column(
                    children: [
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: otherArr.length,
                        itemBuilder: (context, index) {
                          var mObj = otherArr[index];
                          return InkWell(
                            onTap: () {
                              // Handle item tap
                            },
                            child: Container(
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
                                  color:
                                      const Color.fromARGB(255, 228, 226, 226)),
                              child: Row(
                                children: [
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
                                        color: const Color.fromARGB(
                                            255, 126, 37, 126),
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          mObj["name"] ?? "",
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Colors.purple,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 45,
                        width: media.width * 0.85,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 126, 37, 126),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            "Log Out",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
