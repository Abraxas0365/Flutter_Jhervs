import 'package:flutter/material.dart';
import '../view/widgets/home_widget.dart';
import '../../marketplace/view/marketplace_page.dart'; // Add this import

class DashboardModel {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomeWidget(username: 'User'), // ← replace dynamically later
    const Center(child: Text('Transactions Page')),
    const MarketplacePage(), // Use the actual MarketplacePage here
    const Center(child: Text('Accounts Page')),
  ];
}
