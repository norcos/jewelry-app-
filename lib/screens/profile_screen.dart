import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import login screen

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to your profile!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Edit Profile action (not implemented here)
              },
              child: const Text("Edit Profile"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate back to HomeScreen or log out
                Navigator.pop(context);
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
