import 'package:flutter/material.dart';
import 'package:untitled1/page/my_page2.dart';
import 'package:untitled1/page/my_page3.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);
  static final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Mypage3()),);
            },
            child: const Text("Skip",
              style: TextStyle(
                  color: Colors.red),),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/images/img.png')),
            const Text('Shop Online products', style: TextStyle(fontSize: 25)),
            const Center(child: Text('Amet minim mollit non deserunt ullamco est')),
            const Center(child: Text('sit aliqua dolor do amet sint. Velit officia')),
            const Center(child: Text('consequat duis enim velit mollit. Exercitation')),
            const Center(child: Text('veniam conseqat sunt nostrud amet.')),
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 210),
                Image.asset(
                  'assets/images/img_3.png',
                  width: 80,
                  height: 80,
                ),
                const SizedBox(width: 150),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => const Mypage2()),);
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease
                    );
                  },
                  child: const Text('Next',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.red
                    ),), // Adjusted button label
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
