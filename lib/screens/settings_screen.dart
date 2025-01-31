import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Settings'), // AppBar title
      ),
      body: ListView(
        children: [

          // App Preferences
          _buildSectionTitle('Preferences'),
          _buildListTile(
            title: 'Language',
            icon: Icons.language,
            onTap: () {
              // Navigate to Language Settings
            },
          ),
          _buildListTile(
            title: 'Notifications',
            icon: Icons.notifications,
            onTap: () {
              // Navigate to Notification Settings
            },
          ),

          // Support
          _buildSectionTitle('Support'),
          _buildListTile(
            title: 'Help & Support',
            icon: Icons.help,
            onTap: () {
              // Navigate to Help & Support
            },
          ),
          _buildListTile(
            title: 'Contact Us',
            icon: Icons.email,
            onTap: () {
              // Navigate to Contact Us
            },
          ),
          const Divider(),

          // About
          _buildSectionTitle('About'),
          _buildListTile(
            title: 'About App',
            icon: Icons.info,
            onTap: () {
              // Navigate to About App page
            },
          ),
        ],
      ),
    );
  }

  // Helper method to build a section title
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Helper method to build a ListTile for each setting item
  Widget _buildListTile({
    required String title,
    required IconData icon,
    required void Function() onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}