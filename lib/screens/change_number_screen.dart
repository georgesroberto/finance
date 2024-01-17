// lib/screens/change_number_screen.dart
import 'package:flutter/material.dart';
import '../components/bottom_navigation.dart';

class ChangeNumberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Number'),
      ),
      body: Center(
        child: Text('Change Number Page'),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
