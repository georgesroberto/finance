// lib/screens/logout_screen.dart
import 'package:flutter/material.dart';
import '../components/bottom_navigation.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout'),
      ),
      body: Center(
        child: Text('Logout Page'),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
