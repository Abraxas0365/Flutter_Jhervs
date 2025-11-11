import 'package:flutter/material.dart';
import '../view/widgets/home_widget.dart';
import '../view/widgets/transaction_page.dart';
import '../view/widgets/marketplace_widget.dart'; // Add this import
import '../view/widgets/marketplace_page.dart';
import '../view/widgets/settings_page.dart'; // added import

class DashboardModel {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomeWidget(username: 'Jherv'), // ← replace dynamically later
    const TransactionsPage(),
    const MarketplacePage(), // Use the actual Marketplace class here
    const Center(child: Text('Accounts and Settings Page')),
    const MarketplacePage(), // Use the actual MarketplacePage here
    const SettingsPage(), // replaced placeholder with the real settings page
  ];
}
