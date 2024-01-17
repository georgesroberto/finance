// lib/theme/theme_provider.dart
import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  final bool isDarkMode;
  final Function toggleTheme;

  const ThemeProvider({
    Key? key,
    required Widget child,
    required this.isDarkMode,
    required this.toggleTheme,
  }) : super(key: key, child: child);

  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
