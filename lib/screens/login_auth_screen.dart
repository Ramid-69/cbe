import 'package:cbe/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class LoginAuthScreen extends StatefulWidget {
  const LoginAuthScreen({super.key});

  @override
  State<LoginAuthScreen> createState() => _LoginAuthScreenState();
}

class _LoginAuthScreenState extends State<LoginAuthScreen> {
  OtpFieldController otpController = OtpFieldController();

  @override
  void dispose() {
    otpController.clear(); // Clear the OTP fields on dispose
    super.dispose();
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Login Authentication',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Please enter a valid PIN to continue the process',
              style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(255, 6, 5, 5),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            OTPTextField(
              controller: otpController,
              length: 4, // Number of PIN digits
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50,
              style: const TextStyle(fontSize: 20),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              outlineBorderRadius: 8,
              onCompleted: (pin) {
                if (pin == "1111") {
                  _navigateToHomeScreen(context); // Navigate to HomeScreen if PIN is correct
                } else {
                  // Show error if PIN is incorrect
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Incorrect PIN, try again")),
                  );
                }
              },
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Logic for "Forget PIN?" action
              },
              child: const Text(
                'Forget PIN?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
