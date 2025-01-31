// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class ProductPega extends StatelessWidget {
  final String productName;
  final String productDescrition;
  final String productPrice;
  final String productImagePath;

  const ProductPega({
    super.key,
    required this.productName,
    required this.productDescrition,
    required this.productPrice,
    required this.productImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                productImagePath,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    productPrice,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "4.9",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "(2345)",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Caret: 18K",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                // Add horizontal scrolling for smaller screens
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCaretOption("18K", "18K", Colors.black),
                    _buildCaretOption("20K", "20K", Colors.black),
                    _buildCaretOption("21K", "21K", Colors.black),
                    _buildCaretOption("22K", "22K", Colors.black),
                    _buildCaretOption("24K", "24K", Colors.black),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Metal: Diamond",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Width: 2.5MM",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _buildWidthOption("1.5", "1.5", Colors.black),
                  _buildWidthOption("2.5", "2.5", Colors.black),
                  _buildWidthOption("3.5", "3.5", Colors.black),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "This exquisite multi-stone ring features three dazzling gemstones in soft pastel hues. of blue and yellow.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  "Add to Wishlist",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: const Color.fromARGB(255, 98, 95, 95),
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildCaretOption(String caret, String text, Color color) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 252, 252),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildWidthOption(String width, String text, Color color) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Log in to add products to your wishlist.',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to login screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  LoginScreen(),
                ),
              );
            },
            child: const Text('Log in'),
            style: ElevatedButton.styleFrom(),
          ),
        ],
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Log in to chat with us.',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to login screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  LoginScreen(),
                ),
              );
            },
            child: const Text('Log in'),
            style: ElevatedButton.styleFrom(),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Log in to check your profile.',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to login screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  LoginScreen(),
                ),
              );
            },
            child: const Text('Log in'),
            style: ElevatedButton.styleFrom(),
          ),
        ],
      ),
    );
  }
}


// Function to simulate adding the product to the wishlist
  void _addToWishlist(BuildContext context, String productName, String productImagePath, String productPrice) {
    // Get the current wishlist from a global list or state management
    // For now, I will store the wishlist in a static list for demonstration

    List<Map<String, String>> wishlist = []; // Simulate an empty wishlist

    // Add the product to the wishlist list
    wishlist.add({
      'name': productName,
      'image': productImagePath,
      'price': productPrice,
    });

    // Show a confirmation dialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('Product added to your wishlist!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
