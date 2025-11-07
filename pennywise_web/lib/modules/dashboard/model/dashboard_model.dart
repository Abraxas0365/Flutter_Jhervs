import 'package:flutter/material.dart';
import '../view/widgets/home_widget.dart';

class DashboardModel {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomeWidget(username: 'User'), // ← replace dynamically later
    const Center(child: Text('Transactions Page')),
    const Center(child: Text('Marketplace Page')),
    const Center(child: Text('Accounts Page')),
  ];
}
