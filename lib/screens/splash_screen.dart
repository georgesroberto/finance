// lib/screens/splash_screen.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:finance/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Set a timer to navigate to the home screen after 5 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your logo image here
            Image.asset(
              'assets/logo.png',
              width: 50,
              height: 50,
              // You may need to adjust the width and height based on your logo size
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to Max',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
