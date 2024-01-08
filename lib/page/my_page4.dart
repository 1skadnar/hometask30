import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled1/page/my_page5.dart';
import 'package:untitled1/page/my_page6.dart';
class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);
  @override
  State<HomePage1> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage1> {

  int _selectedIndex = 0;

  final List<Widget> _pages = [
  SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(0),
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
          Image.asset(
            'assets/images/img_6.png',
          ),
          const Text('Product Name',style: TextStyle(fontSize: 25),),
          const Text('\$''25.00',style: TextStyle(fontSize: 15)),
          const SizedBox(height: 25,),
          const Text('Lörem ipsum sorad Madeleine Engström. Du kan vara drabbad.Krofask nystartsjobb det vill säga vinde.',style: TextStyle(fontSize: 15),),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                  },
                  child: const Text('Deals'),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 15,),
              Column(
                children: [
                  Image.asset(
                    'assets/images/img_7.png',
                    width: 200,
                    height: 200,
                  ),
                  const Text('Product Name'),
                  const Text('\$''25.00'),
                ],
              ),
              const SizedBox(width: 60,),
              Column(
                children: [
                  Image.asset(
                    'assets/images/img_7.png',
                    width: 200,
                    height: 200,
                  ),
                  const Text('Product Name'),
                  const Text('\$''25.00'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 15),
              Column(
                children: [
                  Image.asset(
                    'assets/images/img_7.png',
                    width: 200,
                    height: 200,
                  ),
                  const Text('Product Name'),
                  const Text('\$ 25.00'),
                ],
              ),
              const SizedBox(width: 60),
              Column(
                children: [
                  Image.asset(
                    'assets/images/img_7.png',
                    width: 200,
                    height: 200,
                  ),
                  const Text('Product Name'),
                  const Text('\$25.00'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                  },
                  child: const Text('Categories'),
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
          Row(
            children: [
              const SizedBox(width: 60,),
              Card(
                elevation: 3,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child : const Center(child: Text('Tech')) ,
                ),
              ),
              const SizedBox(width: 60,),
              Card(
                elevation: 3,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child : const Center(child: Text('Fashion')) ,
                ),
              ),
              const SizedBox(width: 60,),
              Card(
                elevation: 3,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child : const Center(child: Text('Gaming')) ,
                ),
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
          actions: [
            TextButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()),);},
              child: const Text("Next", style: TextStyle(color: Colors.red),),
            ),
          ]
      ),
      body: _pages[_selectedIndex],
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




