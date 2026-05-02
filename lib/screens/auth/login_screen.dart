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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xFFEEEEEE), // very light grey
            ],
            stops: [0.4, 1.0], // white dominates the top
          ),
        ),
        child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal:28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('assets/images/logo 1.png'),
                  const SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 10),

              // Welcome Header
              Center(
                child: Container(
                  child: Text(
                    "From Oven to Doorstep Freshly Baked Happiness!",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
              ),
            ]
          )
        )
      )
      )
      );
  }
}