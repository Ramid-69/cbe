
import 'package:cbe/screens/login_auth_screen.dart';
import 'package:cbe/widgets/animated_welcome_text.dart';
import 'package:flutter/material.dart';

class LoginContent extends StatefulWidget {
  const LoginContent({super.key});

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  // Initial language selection
  String selectedLanguage = 'EN'; // Default language

  // List of languages
  final List<String> languages = ['EN', 'አማ'];

  // Method to handle language selection
  void onLanguageChanged(String? newValue) {
    setState(() {
      selectedLanguage = newValue!; // Update selected language
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 10),
              child: DropdownButton(
                value: selectedLanguage,
                onChanged: onLanguageChanged,
                icon: const Icon(Icons.arrow_drop_down, color: Colors.purple),
                style: const TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
                items: languages.map<DropdownMenuItem<String>>((String language) {
                  return DropdownMenuItem<String>(
                    value: language,
                    child: Text(language),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 50),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'CBE\n',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Birr\n',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    height: 0.7,
                  ),
                ),
                TextSpan(
                  text: 'ባሉበት ሁሉ አለ!',
                  style: TextStyle(
                    fontSize: 7,
                    color: Color.fromARGB(255, 243, 221, 24),
                    height: 0.6,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const AnimatedWelcomeText(),
          const SizedBox(height: 15),
          const Text(
            'Login',
            style: TextStyle(
              fontSize: 14,
              color: Colors.purple,
              fontWeight: FontWeight.w500,
              shadows: [
                Shadow(
                  offset: Offset(0, 1),
                  color: Colors.purple,
                ),
              ],
              decoration: TextDecoration.underline,
              decorationColor: Colors.purple,
              decorationThickness: 1,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Phone number',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            width: 300,
            height: 47,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 236, 232, 232), width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '+251',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        hintText: '960994160',
                        hintStyle: const TextStyle(color: Colors.black),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 10,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  color: Colors.grey,
                  blurRadius: 5,
                ),
              ],
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginAuthScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.fingerprint,
                size: 40,
                color: Colors.purple,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  // Navigate to Sign Up Screen
                },
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.purple,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 123),
          Container(
            width: 150, // Width of the button
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6), // Padding inside the button
            decoration: BoxDecoration(
              color: const Color(0xFFD5A86B), // Peanut color
              borderRadius: BorderRadius.circular(8), // Rounded corners for the button
            ),
            child: const Row(
              children:  [
                Icon(
                  Icons.offline_bolt_outlined, // Use the icon you want
                  color: Colors.white, // Icon color
                  size: 16, // Adjust size as needed
                ),
                SizedBox(width: 6), // Space between icon and text
                Text(
                  "USSD - OFFLINE",
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 9,
                    fontWeight: FontWeight.w600 // Adjust font size as needed
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 40,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(174, 218, 219, 219),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.copyright,
                  color: Colors.black,
                  size: 10,
                ),
                SizedBox(width: 4),
                Text(
                  '2024 Commercial Bank of Ethiopia. All rights reserved 5.0.1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
