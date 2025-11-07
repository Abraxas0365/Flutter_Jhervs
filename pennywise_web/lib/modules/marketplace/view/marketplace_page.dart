import 'package:flutter/material.dart';

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Popular Tools',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    _MarketplaceCard(
                      title: 'Budget Templates',
                      description: 'Download ready-to-use budget templates.',
                      icon: Icons.insert_drive_file,
                    ),
                    SizedBox(width: 16),
                    _MarketplaceCard(
                      title: 'Financial Tools',
                      description: 'Explore calculators and planners.',
                      icon: Icons.calculate,
                    ),
                    SizedBox(width: 16),
                    _MarketplaceCard(
                      title: 'Investment Guides',
                      description: 'Learn about investing and growing wealth.',
                      icon: Icons.trending_up,
                    ),
                    SizedBox(width: 16),
                    _MarketplaceCard(
                      title: 'Exclusive Offers',
                      description: 'Get discounts on partner services.',
                      icon: Icons.local_offer,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'Recommended for You',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    _MarketplaceCard(
                      title: 'Expense Trackers',
                      description: 'Track your daily expenses easily.',
                      icon: Icons.track_changes,
                    ),
                    SizedBox(width: 16),
                    _MarketplaceCard(
                      title: 'Loan Calculators',
                      description: 'Calculate your loan payments.',
                      icon: Icons.calculate_outlined,
                    ),
                    SizedBox(width: 16),
                    _MarketplaceCard(
                      title: 'Tax Helpers',
                      description: 'Get help with your taxes.',
                      icon: Icons.receipt_long,
                    ),
                    SizedBox(width: 16),
                    _MarketplaceCard(
                      title: 'Goal Planners',
                      description: 'Plan and achieve your financial goals.',
                      icon: Icons.flag,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'New Arrivals',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    _MarketplaceCard(
                      title: 'Crypto Insights',
                      description: 'Latest trends in cryptocurrency.',
                      icon: Icons.currency_bitcoin,
                    ),
                    SizedBox(width: 16),
                    _MarketplaceCard(
                      title: 'Insurance Finder',
                      description: 'Find the best insurance deals.',
                      icon: Icons.security,
                    ),
                    SizedBox(width: 16),
                    _MarketplaceCard(
                      title: 'Retirement Planners',
                      description: 'Plan for your retirement.',
                      icon: Icons.celebration,
                    ),
                    SizedBox(width: 16),
                    _MarketplaceCard(
                      title: 'Stock Watchlist',
                      description: 'Monitor your favorite stocks.',
                      icon: Icons.show_chart,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MarketplaceCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const _MarketplaceCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280, // Set a fixed width for carousel effect
      height: 350,
      child: Card(
        color: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(fontSize: 14, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
