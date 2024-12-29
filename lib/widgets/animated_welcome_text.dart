import 'package:flutter/material.dart';

class AnimatedWelcomeText extends StatefulWidget {
  const AnimatedWelcomeText({super.key});

  @override
  State<AnimatedWelcomeText> createState() => _AnimatedWelcomeTextState();
}

class _AnimatedWelcomeTextState extends State<AnimatedWelcomeText>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3), 
      vsync: this,
    )..repeat(reverse: false); // Continuously scrolls leftward
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Align(
        alignment: Alignment.centerLeft,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.9, 0.0), // Start from right off-screen
            end: const Offset(-0.9, 0.0), // End left off-screen
          ).animate(_controller),
          child: const Text(
            'Welcome to CBE Birr Plus App!',
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
