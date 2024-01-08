import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled1/page/my_page5.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController controller;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(viewportFraction: 0.85);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void changeBottomNavigation(int index) {
    currentPageIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  changeBottomNavigation(index);
                },
                physics: const BouncingScrollPhysics(),
                children: const [
                  // Your Images for PageView
                  Image(
                    image: AssetImage('assets/images/img_6.png'),
                    width: 200,
                    height: 100,
                  ),
                  Image(
                    image: AssetImage('assets/images/img_6.png'),
                    width: 200,
                    height: 100,
                  ),
                  Image(
                    image: AssetImage('assets/images/img_6.png'),
                    width: 200,
                    height: 100,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SmoothPageIndicator(
                controller: controller,
                count:  3,
                effect:  const SlideEffect(
                    spacing:  8.0,
                    radius:  4.0,
                    dotWidth:  24.0,
                    dotHeight:  16.0,
                    paintStyle:  PaintingStyle.stroke,
                    strokeWidth:  1.5,
                    dotColor:  Colors.grey,
                    activeDotColor:  Colors.indigo
                ),
                onDotClicked: (index){
                }
            ),
            const SizedBox(
                height: 0
            ),
            const Row(
              children: [
                SizedBox(
                    width: 50
                ),
                Text(
                  'Product Name',
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(
                    width: 250
                ),
                Text(
                  '\$ 25.00',
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
              ],
            ),
            const SizedBox(
                height: 30
            ),
            const Text(
                'Lörem ipsum sorad Madeleine Engström. Du kan vara '
            ),
            const Text(
                'drabbad'
            ),
            const Text(
                '.Krofask nystartsjobb det vill säga vinde.   Lörem ipsum sorad '
            ),
            const Text(
                'Madeleine Engström. Du kan vara drabbad.'
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const Page8()),);
              },
              style:ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
              ),
              child: const Text('+          Add to Card            ',
                style: TextStyle(
                    fontSize: 25
                ),
              ),
            ),
            const SizedBox(
                height: 25
            ),
            const Row(
              children: [
                SizedBox(
                    width: 20
                ),
                Text(
                  "Rewiews",
                  style: TextStyle(
                      fontSize: 25
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 30),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'),
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 15 ,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text("Jane Cooper ", style: TextStyle(fontSize: 25),),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),

                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(width: 91  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("01 / 01 / 2021")
                  ],
                ),
              ],
            ),
            const Column(
              children: [
                Text('Amazing Product',style: TextStyle(fontSize: 25),),
                Text('Lörem ipsum sorad Madeleine Engström. Du kan vara',),
                Text('drabbad. Krofask nystartsjobb det vill säga vinde.  Lörem '),
                Text('ipsum sorad Madeleine Engström. Du kan vara drabbad.')
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 30),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'),
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 15 ,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text("Lance Alot ", style: TextStyle(fontSize: 25),),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),

                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(width: 91  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("01 / 01 / 2021")
                  ],
                ),
              ],
            ),
            const Column(
              children: [
                Text('Amazing Product',style: TextStyle(fontSize: 25),),
                Text('Lörem ipsum sorad Madeleine Engström. Du kan vara',),
                Text('drabbad. Krofask nystartsjobb det vill säga vinde.  Lörem '),
                Text('ipsum sorad Madeleine Engström. Du kan vara drabbad.')
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(width: 30),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'),
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 15 ,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text("Lance Alot ", style: TextStyle(fontSize: 25),),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),

                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(width: 91 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("01 / 01 / 2021")
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Column(
              children: [
                Text('Amazing Product',style: TextStyle(fontSize: 25),),
                Text('Lörem ipsum sorad Madeleine Engström. Du kan vara',),
                Text('drabbad. Krofask nystartsjobb det vill säga vinde.  Lörem '),
                Text('ipsum sorad Madeleine Engström. Du kan vara drabbad.'),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const Page8()),);
              },
              style:ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
              ),
              child: const Text('           See more reviews            ',
                style: TextStyle(
                    fontSize: 25
                ),
              ),
            ),
            const SizedBox(height: 15 ),
            const Text(''),
          ],
        ),
      ),
    );
  }
}
