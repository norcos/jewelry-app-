import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import home screen
import 'registration_screen.dart'; // Import registration screen

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // Hardcoded credentials
  final String _correctEmail = 'user@example.com';
  final String _correctPassword = 'password123';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/login_back.png', // Replace with your background image
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Center the login form
          Center(
            child: Container(
              width: 300, // Width of the login form
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Email TextField
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Password TextField
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Log In Button
                  ElevatedButton(
                    onPressed: () {
                      // Hardcoded login logic
                      if (_emailController.text == _correctEmail &&
                          _passwordController.text == _correctPassword) {
                        // Login successful, navigate to HomePage
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      } else {
                        // Show alert if login fails
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Login Failed"),
                              content: const Text("Invalid credentials."),
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
                    child: const Text("Log In"),
                  ),
                  const SizedBox(height: 10),
                  // Register Button to navigate to RegistrationScreen (optional)
                  TextButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                         builder: (context) =>  RegistrationScreen(),
                        ),
                       );
                    },
                    child: const Text(
                      "Not a member? Register",
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

