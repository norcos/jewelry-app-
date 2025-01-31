// ignore_for_file: empty_statements, dead_code

import 'package:flutter/material.dart';
import 'product_page.dart'; // Import Product Page
import 'home_screen.dart'; // Import HomeScreen
import 'login_screen.dart';

class RingsPage extends StatelessWidget {
  const RingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rings Collection"),
      ),
      body: GridView.builder(
        // Set the number of columns to 2
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10, // Horizontal space between items
          mainAxisSpacing: 10, // Vertical space between items
          childAspectRatio: 0.75, // Adjust the aspect ratio of each item
        ),
        padding: const EdgeInsets.all(10),
        itemCount: 6, // Total number of items (3 rows * 2 columns)
        itemBuilder: (BuildContext context, int index) {
          // You can add more products here
          List<Map<String, String>> rings = [
            {
              'name': 'Gold Ring',
              'image': 'assets/images/ring_1.jpg',
              'price': 'Rs.200,000'
            },
            {
              'name': 'Diamond Ring',
              'image': 'assets/images/product_page_2.png',
              'price': 'Rs.500,000'
            },
            {
              'name': 'Platinum Ring',
              'image': 'assets/images/platinum_ring.png',
              'price': 'Rs.400,000'
            },
            {
              'name': 'Silver Ring',
              'image': 'assets/images/silver_ring.jpg',
              'price': 'Rs.150,000'
            },
            {
              'name': 'Ruby Ring',
              'image': 'assets/images/ruby_ring.jpg',
              'price': 'Rs.300,000'
            },
            {
              'name': 'Sapphire Ring',
              'image': 'assets/images/sapphire_ring.jpg',
              'price': 'Rs.250,000'
            },
          ];

          return GestureDetector(
            onTap: () {
              // Navigate to the ProductPage with the product details
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    productName: rings[index]['name']!,
                    productPrice: rings[index]['price']!,
                    productImagePath: rings[index]['image']!,
                  ),
                ),
              );
            },
            child: _buildRingCard(
              rings[index]['name']!,
              rings[index]['price']!,
              rings[index]['image']!,
              rings[index]['price']!,
            ),
          );
        },
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
        currentIndex: 0, // Set the current index
        selectedItemColor: const Color.fromARGB(255, 98, 95, 95),
        onTap: (index) {
          // Handle navigation
          if (index == 0) {
            // Navigate to HomeScreen when the home icon is clicked
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          }
        },
      ),
    );
  }

  // Helper method to build ring product card
  Widget _buildRingCard(
      String name, String description, String imagePath, String price) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              price,
              style: const TextStyle(fontSize: 14, color: Colors.blue),
            ),
          ),
        ],
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
                  style: ElevatedButton.styleFrom(
                  
                  ),
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
                  style: ElevatedButton.styleFrom(
                  
                  ),
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
                  style: ElevatedButton.styleFrom(
                  
                  ),
                ),
              ],
            ),
    );
  }
}
