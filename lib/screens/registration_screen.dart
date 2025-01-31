import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import login screen


class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  // Hardcoded registration details
  final String _registeredEmail = 'user@example.com';
  final String _registeredPassword = 'password123';

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/login_back.png', // Background image (same or different image)
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Paper-like design for registration form
          Center(
            child: Container(
              width: 300, // Adjust width of the paper
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Full Name Input
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Email Input
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Password Input
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Register Button
                  ElevatedButton(
                    onPressed: () {
                      // Hardcoded registration logic
                      // In a real-world app, this would involve saving user details in a database
                      if (_emailController.text == _registeredEmail &&
                          _passwordController.text == _registeredPassword) {
                        // Successfully registered, navigate to Login page
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  LoginScreen(),
                          ),
                        );
                      } else {
                        // Registration failed (for simplicity, this case isn't handled here)
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Registration Failed"),
                              content: const Text("Please enter valid details."),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text("Register"),
                  ),
                  const SizedBox(height: 10),
                  // Login Link to navigate to the Login screen
                  TextButton(
                    onPressed: () {
                      // Navigate to the Login Screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Already a member? Log In",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
