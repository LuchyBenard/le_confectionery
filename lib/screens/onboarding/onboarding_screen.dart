import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            fit: StackFit.loose,
            children: [
              Positioned(
                bottom: 0,

                child: Image.asset('assets/images/onb1.arc.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
