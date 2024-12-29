import 'package:cbe/widgets/login_content.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                
                     Color.fromARGB(252, 71, 2, 83),
                     Color.fromARGB(25, 255, 255, 255), 
                  ],
                  stops:  [0.0, 0.5],
                ),
              ),
            ),
          ),
          const Center(
            child: LoginContent(),
          ),
        ],
      ),
    );
  }
}