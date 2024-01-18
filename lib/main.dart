// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'state/app_state.dart';
import 'screens/splash_screen.dart';
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
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Max_App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.light,
        ),
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => SplashScreen(),
          '/home': (context) => HomePage(),
          '/transactions': (context) => TransactionPage(),
          '/settings': (context) => SettingsPage(),
          // '/profile': (context) => ProfilePage(),
        },
      ),
    );
  }
}
