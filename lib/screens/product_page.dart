

import 'package:flutter/material.dart';



class ProductPage extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImagePath;

  const ProductPage({
    super.key,
    required this.productName,
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
                "Metal: Gold",
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
              // Details Section
              const Text(
                "Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "This elegant rose gold ring showcases a striking design with interwoven diamond-like stones that sparkle beautifully.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              // Add to Cart Button
              ElevatedButton(
                onPressed: () {
                  _addToWishlist(context, productName, productImagePath, productPrice);
                },
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
    );
  }

  void _addToWishlist(BuildContext context, String productName, String productImagePath, String productPrice) {
   
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$productName has been added to your wishlist!'),
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
        style: const TextStyle(
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
        style: const TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}



