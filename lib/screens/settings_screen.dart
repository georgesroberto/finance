// lib/screens/settings_screen.dart
import 'package:finance/screens/change_number_screen.dart';
import 'package:flutter/material.dart';
import '../components/bottom_navigation.dart';
// import '../theme/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  // Create an instance of ThemeProvider
  // final ThemeProvider themeProvider = ThemeProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Change Number'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangeNumberPage()),
              );
            },
          ),
          ListTile(
            title: Text('Enable Dark Mode'),
            onTap: () {
              // Call toggleTheme on the instance
              // themeProvider.toggleTheme();
            },
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              _showLogoutConfirmationDialog(context);
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Implement your logout logic here
                // Example: Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
