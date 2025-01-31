import 'package:flutter/material.dart';
import 'login_screen.dart'; 


class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

 
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
                    "Register",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                 
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
             
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
                  
                      if (_emailController.text == _registeredEmail &&
                          _passwordController.text == _registeredPassword) {
                 
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  LoginScreen(),
                          ),
                        );
                      } else {
                     
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
                
                  TextButton(
                    onPressed: () {
                 
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
