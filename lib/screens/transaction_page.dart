// lib/Screens/TransactionPage/transaction_page.dart
import 'package:flutter/material.dart';
import 'package:finance/screens/transaction/deposit_screen.dart';
import 'package:finance/screens/transaction/withdraw_screen.dart';
import 'package:finance/screens/transaction/stats_screen.dart';
import '../components/bottom_navigation.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    DepositScreen(),
    WithdrawScreen(),
    StatsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: Text('Deposit'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Text('Withdraw'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: Text('Stats'),
                ),
              ],
            ),
          ),
          Expanded(
            child: _screens[_currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
