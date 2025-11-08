import 'package:flutter/material.dart';
import 'stat_card.dart';
import 'recent_card.dart';

class HomeWidget extends StatelessWidget {
  final String username;

  const HomeWidget({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello $username',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Here's your financial review",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.1,
              children: const [
                StatCard(
                  title: 'Total Balance',
                  amount: '\$12,000',
                  change: '+12.5% from last month',
                ),
                StatCard(
                  title: 'Savings',
                  amount: '\$5,400',
                  change: '+8.2% from last month',
                ),
                StatCard(
                  title: 'Income',
                  amount: '\$3,800',
                  change: '+5.1% from last month',
                ),
                StatCard(
                  title: 'Expenses',
                  amount: '\$1,200',
                  change: '-2.3% from last month',
                  changeColor: Colors.redAccent,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: const Color(0xFF1D1D1D),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Recent Activity',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RecentCard(
                  type: 'Expense',
                  date: 'Aug 20, 2023',
                  ammount: '-₱150.00',
                  source: 'Groceries',
                ),
                RecentCard(
                  type: 'Expense',
                  date: 'Aug 20, 2023',
                  ammount: '-₱150.00',
                  source: 'Groceries',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
