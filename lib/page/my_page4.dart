import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
  SingleChildScrollView(
    // Sahifalar ro'yxati
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.search),
              hintText: 'Search',
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Hello Jane',
            style: TextStyle(fontSize: 25),
          ),
          const Text('we have some recommendations for you'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                  },
                  child: const Text('Just for you'),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                },
                child: const Text('See all'),
              ),
            ],
          ),
        ],
      ),
    ),
  ),

    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: _pages[_selectedIndex], // Tanlangan sahifa
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey,
        gap: 20,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.person,
            text: "Person",
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Shopping',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}




