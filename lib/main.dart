// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/transaction_page.dart';
import 'screens/settings_screen.dart';
// import 'screens/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/transactions': (context) => TransactionPage(),
        '/settings': (context) => SettingsPage(),
        '/profile': (context) => SettingsPage(),
      },
    );
  }
}
