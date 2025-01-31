// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code, unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:my_app_jewel_lanka/screens/product_page_2.dart';
import 'login_screen.dart';
import 'product_page.dart';
import 'settings_screen.dart';
import 'rings_page.dart';
import 'wishlist_screen.dart' as wishlist;
import 'chat_screen.dart' as chat;
import 'profile_screen.dart' as profile;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const wishlist
        .WishlistScreen(), 
    const chat.ChatScreen(),
    const profile.ProfileScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
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
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Welcome'),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: IconButton(
                        icon: const Icon(Icons.notifications),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: screenWidth,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image.asset(
                      'assets/images/home_back.jpg',
                      width: screenWidth,
                      height:
                          isPortrait ? screenHeight * 0.3 : screenHeight * 0.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NEW COLLECTIONS',
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 243, 176, 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Show Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RingsPage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: screenWidth * 0.03),
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth * 0.2, // Dynamic width
                            height: screenWidth * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                              image: const DecorationImage(
                                image: AssetImage('assets/images/rings.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Rings',
                            style: TextStyle(
                              fontSize: screenWidth * 0.035,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.03),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth * 0.2, // Dynamic width
                          height: screenWidth * 0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/necklace.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Necklace',
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.03),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth * 0.2, // Dynamic width
                          height: screenWidth * 0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/braclet.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Bracelets',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.03),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth * 0.2, // Dynamic width
                          height: screenWidth * 0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/earrings.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Earrings',
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: screenWidth * 0.03),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth * 0.2, // Dynamic width
                          height: screenWidth * 0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/pandent.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Pendants',
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'New Arrival',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: isPortrait ? 2 : 3,
              childAspectRatio: isPortrait ? 0.8 : 1.2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPage(
                          productName: ' Gold Ring',
                          productPrice: 'Rs.200,000',
                          productImagePath: 'assets/images/ring_1.jpg',
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/ring_1.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Rose Gold Ring',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Rs.200,000',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPega(
                          productName: 'Diamond Ring',
                          productPrice: 'Rs.150,000',
                          productImagePath: 'assets/images/product_page_2.png',
                          productDescrition: '',
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/product_page_2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Diamond Ring',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Rs.150,000',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
