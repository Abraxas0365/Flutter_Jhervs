import 'package:flutter/material.dart';

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.2,
          children: const [
            _MarketplaceCard(
              title: 'Budget Templates',
              description: 'Download ready-to-use budget templates.',
              icon: Icons.insert_drive_file,
            ),
            _MarketplaceCard(
              title: 'Financial Tools',
              description: 'Explore calculators and planners.',
              icon: Icons.calculate,
            ),
            _MarketplaceCard(
              title: 'Investment Guides',
              description: 'Learn about investing and growing wealth.',
              icon: Icons.trending_up,
            ),
            _MarketplaceCard(
              title: 'Exclusive Offers',
              description: 'Get discounts on partner services.',
              icon: Icons.local_offer,
            ),
          ],
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
    return Card(
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
    );
  }
}
