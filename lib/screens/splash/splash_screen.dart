import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SizedBox.expand(
    child: Image.asset(
'assets/images/splash1.png',
fit: BoxFit.cover,
),
),
    );
  }
}

   