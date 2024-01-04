import 'package:flutter/material.dart';
import 'package:untitled1/page/my_page.dart';
import 'package:untitled1/page/my_page3.dart';
class Mypage2 extends StatelessWidget {
  const Mypage2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Mypage3()),);},
            child: const Text("Skip", style: TextStyle(color: Colors.red),),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/images/img_1.png')),
            const Text('Fastest Delivery', style: TextStyle(fontSize: 25)),
            const Center(child: Text('Amet minim mollit non deserunt ullamco est')),
            const Center(child: Text('sit aliqua dolor do amet sint. Velit officia')),
            const Center(child: Text('consequat duis enim velit mollit. Exercitation')),
            const Center(child: Text('veniam conseqat sunt nostrud amet.')),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyPage()),
                    );
                  },
                  child: const Text('Prev',
                    style: TextStyle(fontSize: 25,color: Colors.red),),
                ),
                const SizedBox(width: 120),
                Image.asset(
                  'assets/images/img_4.png',
                  width: 80,
                  height: 80,
                ),
                const SizedBox(width: 120),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Mypage3())
                      ,)
                    ;},
                  child: const Text('Next',style: TextStyle(fontSize: 25,color: Colors.red),), // Adjusted button label
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
