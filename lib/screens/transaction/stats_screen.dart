// lib/Screens/TransactionPage/stats_screen.dart
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stats'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Weekly Deposits',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            LineChart(
              LineChartData(
                titlesData:
                    FlTitlesData(show: false), // Hide titles for simplicity
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: const Color(0xff37434d), width: 1),
                ),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: true,
                  drawHorizontalLine: true,
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 3),
                      FlSpot(1, 1),
                      FlSpot(2, 4),
                      FlSpot(3, 2),
                      // Add more data points as needed
                    ],
                    isCurved: true,
                    colors: [Colors.blue],
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Weekly Withdrawals',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            LineChart(
              LineChartData(
                titlesData:
                    FlTitlesData(show: false), // Hide titles for simplicity
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: const Color(0xff37434d), width: 1),
                ),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: true,
                  drawHorizontalLine: true,
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 1),
                      FlSpot(1, 3),
                      FlSpot(2, 2),
                      FlSpot(3, 4),
                      // Add more data points as needed
                    ],
                    isCurved: true,
                    colors: [Colors.red],
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
