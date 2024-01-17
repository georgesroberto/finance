// lib/Screens/deposit_screen.dart
import 'package:flutter/material.dart';
import 'package:finance/screens/transaction_page.dart';

class DepositScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deposit'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to TransactionPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TransactionPage()),
            );
          },
          child: Text('Deposit with Mpesa'),
        ),
      ),
    );
  }
}
