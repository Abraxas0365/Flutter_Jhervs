import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    const Color maroon = Color(0xFF8B0C12);
    const Color darkBg = Color(0xFF1E1E1E);
    const Color lightCard = Color(0xFFF2F2F2);
    const Color font = Color(0xFF1A1A1A); 

    return Scaffold(
      backgroundColor: darkBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const SizedBox(width: 8),
                  const Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.orangeAccent, width: 3),
                      ),
                      child: const CircleAvatar(
                        radius: 44,
                        backgroundImage: NetworkImage('https://picsum.photos/200'),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Pennywise Pennywise',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text('+639123456789', style: TextStyle(color: Colors.white70)),
                    const SizedBox(height: 4),
                    const Text('pennywise@gmail.com', style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              const Divider(color: Colors.white24),
              const SizedBox(height: 12),

              // Personal Section Card
              const Padding(
                padding: EdgeInsets.only(bottom: 8, left: 4),
                child: Text(
                  'Personal',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: lightCard,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.lock_outline, color: font),
                      title: Text('Change Pin', style: const TextStyle(color: font)),
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.phone_android_outlined, color: font),
                      title: Text('Change Mobile Number', style: const TextStyle(color: font)),
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.email_outlined, color: font),
                      title: Text('Change Email Address', style: const TextStyle(color: font)),
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.repeat, color: font),
                      title: Text('Recurring Transactions', style: const TextStyle(color: font)),
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    // Dark mode row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          const Icon(Icons.nightlight_round, color: font),
                          const SizedBox(width: 16),
                          Expanded(child: Text('Dark Mode', style: const TextStyle(color: font))),
                          Switch(
                            value: _darkMode,
                            onChanged: (v) => setState(() => _darkMode = v),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // Support Section Card
              const Padding(
                padding: EdgeInsets.only(bottom: 8, left: 4),
                child: Text(
                  'Support',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: lightCard,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.help_outline, color: font),
                      title: Text('Help', style: const TextStyle(color: font)),
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.play_circle_outline, color: font),
                      title: Text('Tutorial', style: const TextStyle(color: font)),
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.privacy_tip_outlined, color: font),
                      title: Text('Privacy Policy', style: const TextStyle(color: font)),
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.description_outlined, color: font),
                      title: Text('Terms of Use', style: const TextStyle(color: font)),
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // Security Section 
              const Padding(
                padding: EdgeInsets.only(bottom: 8, left: 4),
                child: Text(
                  'Security',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: lightCard,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.link, color: font),
                      title: Text('Link Account', style: const TextStyle(color: font)),
                      onTap: () {
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.delete_forever, color: font),
                      title: Text('Delete Account', style: const TextStyle(color: font)),
                      onTap: () {
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.fingerprint, color: font),
                      title: Text('Biometrics and Authentication', style: const TextStyle(color: font)),
                      onTap: () {
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.exit_to_app, color: font),
                      title: Text('Logout', style: const TextStyle(color: font)),
                      onTap: () {
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Contact Us section
              const Padding(
                padding: EdgeInsets.only(bottom: 8, left: 4),
                child: Text(
                  'Contact Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text(
                  'pennywise@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}