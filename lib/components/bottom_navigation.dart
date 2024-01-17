// lib/components/bottom_navigation.dart
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Home', '/home', buildContext),
          _buildNavItem(
              Icons.article, 'Transactions', '/transactions', buildContext),
          _buildPlaceholder(),
          _buildNavItem(Icons.settings, 'Settings', '/settings', buildContext),
          _buildNavItem(Icons.person, 'Profile', '/profile', buildContext),
        ],
      ),
    );
  }

  Widget _buildNavItem(
      IconData icon, String label, String route, BuildContext? buildContext) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: () {
            // Check if buildContext is not null before using it
            if (buildContext != null) {
              Navigator.pushNamed(buildContext, route);
            }
          },
        ),
        Text(label),
      ],
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
    );
  }
}
