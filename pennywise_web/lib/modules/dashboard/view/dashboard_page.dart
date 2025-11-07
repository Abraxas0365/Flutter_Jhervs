import 'package:flutter/material.dart';
import '../controller/dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final DashboardController _controller = DashboardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.dashboard),
            onPressed: () => setState(() => _controller.setPage(0)),
          ),
          IconButton(
            icon: const Icon(Icons.compare_arrows_outlined),
            onPressed: () => setState(() => _controller.setPage(1)),
          ),
          IconButton(
            icon: const Icon(Icons.monetization_on_outlined),
            onPressed: () => setState(() => _controller.setPage(2)),
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => setState(() => _controller.setPage(3)),
          ),
        ],
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _controller.getCurrentPage(),
      ),
    );
  }
}
