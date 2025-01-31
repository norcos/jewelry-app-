import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Settings'),
      ),
      body: ListView(
        children: [

          
          _buildSectionTitle('Preferences'),
          _buildListTile(
            title: 'Language',
            icon: Icons.language,
            onTap: () {
           
            },
          ),
          _buildListTile(
            title: 'Notifications',
            icon: Icons.notifications,
            onTap: () {

            },
          ),

        
          _buildSectionTitle('Support'),
          _buildListTile(
            title: 'Help & Support',
            icon: Icons.help,
            onTap: () {
       
            },
          ),
          _buildListTile(
            title: 'Contact Us',
            icon: Icons.email,
            onTap: () {
          
            },
          ),
          const Divider(),

          
          _buildSectionTitle('About'),
          _buildListTile(
            title: 'About App',
            icon: Icons.info,
            onTap: () {
           
            },
          ),
        ],
      ),
    );
  }


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