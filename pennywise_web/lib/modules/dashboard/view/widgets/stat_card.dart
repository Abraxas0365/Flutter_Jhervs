import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String amount;
  final String change;
  final Color changeColor;

  const StatCard({
    super.key,
    required this.title,
    required this.amount,
    required this.change,
    this.changeColor = const Color(0xFFFFB74D), // dim orange
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1D1D1D),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              )),
          const SizedBox(height: 8),
          Text(amount,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 6),
          Text(
            change,
            style: TextStyle(
              color: changeColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
