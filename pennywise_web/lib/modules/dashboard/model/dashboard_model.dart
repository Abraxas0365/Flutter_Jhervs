import 'package:flutter/material.dart';
import '../view/widgets/home_widget.dart';
import '../view/widgets/transaction_page.dart';
import '../view/widgets/marketplace_page.dart';

class DashboardModel {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomeWidget(username: 'Jherv'), // ← replace dynamically later
    const TransactionsPage(),
    const MarketplacePage(), // Use the actual MarketplacePage here
    const Center(child: Text('Accounts and Settings Page')),
  ];
}
