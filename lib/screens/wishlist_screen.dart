import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  // Sample wishlist products (for demo purposes)
  List<Map<String, String>> wishlistItems = [
    {
      'name': 'Gold Ring',
      'image': 'assets/images/ring_1.jpg',
      'price': 'Rs.200,000',
    },
    {
      'name': 'Diamond Necklace',
      'image': 'assets/images/product_page_2.png',
      'price': 'Rs.500,000',
    },
    {
      'name': 'Platinum Ring',
      'image': 'assets/images/platinum_ring.png',
      'price': 'Rs.400,000',
    },
    {
      'name': 'Silver Ring',
      'image': 'assets/images/silver_ring.jpg',
      'price': 'Rs.150,000',
    },
    {
      'name': 'Ruby Ring',
      'image': 'assets/images/ruby_ring.jpg',
      'price': 'Rs.300,000',
    },
    {
      'name': 'Sapphire Ring',
      'image': 'assets/images/sapphire_ring.jpg',
      'price': 'Rs.250,000',
    },
  ];

  // Function to remove a product from the wishlist
  void _removeFromWishlist(int index) {
    setState(() {
      wishlistItems.removeAt(index); // Remove item at the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wishlistItems.isEmpty
          ? const Center(
              child: Text('No items in your wishlist yet.'),
            )
          : ListView.builder(
              itemCount: wishlistItems.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      // Product Image
                      Image.asset(
                        wishlistItems[index]['image']!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 10),
                      // Product Name and Price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            wishlistItems[index]['name']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            wishlistItems[index]['price']!,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      // Delete Button
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Call function to remove item from wishlist
                          _removeFromWishlist(index);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
