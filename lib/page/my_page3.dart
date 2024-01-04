import 'package:flutter/material.dart';
import 'package:untitled1/page/my_page2.dart';
import 'package:untitled1/page/my_page4.dart';
class Mypage3 extends StatelessWidget {
  const Mypage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/images/img_2.png')),
            const Text('Contactless Delivery', style: TextStyle(fontSize: 25)),
            const Center(child: Text('Amet minim mollit non deserunt ullamco est')),
            const Center(child: Text('sit aliqua dolor do amet sint. Velit officia')),
            const Center(child: Text('consequat duis enim velit mollit. Exercitation')),
            const Center(child: Text('veniam conseqat sunt nostrud amet.')),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Mypage2()),
                    );
                  },
                  child: const Text('Prev',style: TextStyle(fontSize: 25,color: Colors.red),), // Adjusted button label
                ),
                const SizedBox(width: 120),
                Image.asset(
                  'assets/images/img_5.png',
                  width: 80,
                  height: 80,

                ),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }, child: const Text('Start',style: TextStyle(fontSize: 25,color: Colors.red),),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
