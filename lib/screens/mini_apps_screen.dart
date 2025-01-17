import 'package:flutter/material.dart';

class MiniAppsScreen extends StatefulWidget {
  const MiniAppsScreen({super.key});

  @override
  State<MiniAppsScreen> createState() => _MiniAppsScreenState();
}

class _MiniAppsScreenState extends State<MiniAppsScreen> {
  final List<Map<String, dynamic>> gridItems = [
    {"text": "14th Jimma expo 2017", "image": "assets/images/jim.jpeg"},
    {"text": "Guzo", "image": "assets/images/guzo.png"},
    {"text": "Entoto Park Cbe Run", "image": "assets/images/cbe.png"},
    {"text": "Kuraztech", "image": "assets/images/kura.jpeg"},
    {"text": "National ID", "image": "assets/images/ni.jpeg"},
    {"text": "DSTV", "image": "assets/images/dstv.png"},
    {"text": "ET Airlines", "image": "assets/images/etair.png"},
    {"text": "Beu Delivery", "image": "assets/images/beu.jpeg"},
    {"text": "Es Services", "image": "assets/images/es.jpeg"},
    {"text": "CBE Donation", "image": "assets/images/cbed.png"},
    {"text": "Commercepal", "image": "assets/images/cp.png"},
    {"text": "TicketBiro", "image": "assets/images/tb.png"},
    {"text": "Get Reset", "image": "assets/images/gr.jpeg"},
    {"text": "School Pay", "image": "assets/images/scp.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mini Apps',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: const Color.fromRGBO(143, 39, 143, 1),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: gridItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        gridItems[index]["image"],
                        width: 50,
                        height: 50,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        gridItems[index]["text"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
