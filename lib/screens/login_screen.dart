import 'package:flutter/material.dart';
import 'home_screen.dart'; 
import 'registration_screen.dart'; 

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});


  final String _correctEmail = 'admin@gmail.com';
  final String _correctPassword = 'admin123';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/login_back.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
       
          Center(
            child: Container(
              width: 300, 
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
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                   
                      if (_emailController.text == _correctEmail &&
                          _passwordController.text == _correctPassword) {
                   
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      } else {
             
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

