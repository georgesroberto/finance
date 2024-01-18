// lib/Screens/HomePage/home_page.dart
import 'package:flutter/material.dart';
import 'transaction/deposit_screen.dart';
import 'transaction/withdraw_screen.dart';
import '../components/bottom_navigation.dart';
import 'package:provider/provider.dart';
import '../state/app_state.dart';


class HomePage extends StatelessWidget {
  final String username = "Mr. Georges"; // Replace with actual username

  // final double accountBalance = 1000.00; // Replace with actual account balance
  final List<String> recentTransactions = [
    'Deposited KES 1200.00',
    'Withdrawn KES 200.00',
    // Add more transactions as needed
  ];

  @override
  Widget build(BuildContext context) {
    // Example: accessing account balance in HomePage
    double accountBalance = Provider.of<AppState>(context).accountBalance;

    return Scaffold(
      appBar: AppBar(
        title: Text('Max'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning, $username', style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 16.0),
            Text('Account Balance: KES $accountBalance',
                style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ... (Notification icon and action buttons)

                ElevatedButton(
                  onPressed: () {
                    // Navigate to Deposit screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DepositScreen()),
                    );
                  },
                  child: Text('Deposit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Withdraw screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WithdrawScreen()),
                    );
                  },
                  child: Text('Withdraw'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text('Recent Transactions',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: recentTransactions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(recentTransactions[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
