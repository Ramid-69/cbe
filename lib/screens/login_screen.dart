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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    const Color.fromARGB(255, 71, 2, 83).withOpacity(0.99),
                    Colors.white.withOpacity(0.1),
                  ],
                  stops: const[0.0, 0.5],
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