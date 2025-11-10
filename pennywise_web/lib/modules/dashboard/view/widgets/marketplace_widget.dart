import 'package:flutter/material.dart';
import 'dart:math';
import 'creditForm_page.dart'; // Add this import

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Example credit score value (range: 300-850)
    final int creditScore = 670;

    // Calculate progress value (0.0 to 1.0)
    final double progress = ((creditScore - 300) / (850 - 300)).clamp(0.0, 1.0);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Marketplace",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4, width: double.infinity),
                        Text(
                          "Discover tools and resources to enhance your financial journey",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Add credit score card here
              const SizedBox(height: 16),
              Center(
                child: SizedBox(
                  width: 260,
                  height: 140,
                  child: Card(
                    color: Theme.of(context).colorScheme.surface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "Credit Score",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Expanded(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SemiCircleProgressBar(
                                  value: progress,
                                  backgroundColor: Colors.grey.shade700,
                                  fillColor: Colors.redAccent,
                                ),
                                Text(
                                  '$creditScore',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'BDO',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _MarketplaceCard(
                      title: 'Credit card Offers',
                      description: 'Exclusive deals on credit cards.',
                      icon: Icons.insert_drive_file,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                    const SizedBox(width: 24),
                    _MarketplaceCard(
                      title: '10% off on Financial Planners',
                      description: 'Get expert financial planning services.',
                      icon: Icons.calculate,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                    const SizedBox(width: 24),
                    _MarketplaceCard(
                      title: 'Investment Guides',
                      description: 'Learn the basics of investing.',
                      icon: Icons.trending_up,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                    const SizedBox(width: 24),
                    _MarketplaceCard(
                      title: 'Exclusive Offers',
                      description: 'Get discounts on partner services.',
                      icon: Icons.local_offer,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'BPI',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _MarketplaceCard(
                      title: 'Apply for loans',
                      description: 'Easy loan applications here.',
                      icon: Icons.track_changes,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                    const SizedBox(width: 24),
                    _MarketplaceCard(
                      title: '0% interest on credit cards',
                      description: 'Calculate your loan payments.',
                      icon: Icons.calculate_outlined,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                    const SizedBox(width: 24),
                    _MarketplaceCard(
                      title: 'Apply for debit cards',
                      description: 'Get help with your taxes.',
                      icon: Icons.receipt_long,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                    const SizedBox(width: 24),
                    _MarketplaceCard(
                      title: 'Learn more',
                      description: 'Explore financial tips and tricks.',
                      icon: Icons.flag,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Maybank',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _MarketplaceCard(
                      title: 'Start investing',
                      description: 'Begin your investment journey today.',
                      icon: Icons.currency_bitcoin,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                    const SizedBox(width: 24),
                    _MarketplaceCard(
                      title: 'Insurance Finder',
                      description: 'Find the best insurance deals here.',
                      icon: Icons.security,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                    const SizedBox(width: 24),
                    _MarketplaceCard(
                      title: 'Retirement Planners',
                      description: 'Plan for your retirement.',
                      icon: Icons.celebration,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
                    ),
                    const SizedBox(width: 24),
                    _MarketplaceCard(
                      title: 'Stock Watchlist',
                      description: 'Monitor your favorite stocks.',
                      icon: Icons.remove_red_eye,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreditFormPage())),
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

// Semi-circle progress bar widget
class SemiCircleProgressBar extends StatelessWidget {
  final double value; // 0.0 to 1.0
  final Color backgroundColor;
  final Color fillColor;

  const SemiCircleProgressBar({
    super.key,
    required this.value,
    required this.backgroundColor,
    required this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(120, 60),
      painter: _SemiCirclePainter(
        value: value,
        backgroundColor: backgroundColor,
        fillColor: fillColor,
      ),
    );
  }
}

class _SemiCirclePainter extends CustomPainter {
  final double value;
  final Color backgroundColor;
  final Color fillColor;

  _SemiCirclePainter({
    required this.value,
    required this.backgroundColor,
    required this.fillColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height);
    final radius = size.width / 2;

    // Draw background arc
    final bgPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 12
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi, // Start angle
      pi, // Sweep angle (semi-circle)
      false,
      bgPaint,
    );

    // Draw filled arc
    final fillPaint = Paint()
      ..color = fillColor
      ..strokeWidth = 12
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi,
      pi * value,
      false,
      fillPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class _MarketplaceCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const _MarketplaceCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 260,
        height: 220,
        child: Card(
          color: Theme.of(context).colorScheme.surface,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 24),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.white70),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
