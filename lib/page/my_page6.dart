import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  PageController controller = PageController(viewportFraction: 0.85);
  int currentPageIndex = 0;
  void changeBottomNavigation(int index){
    currentPageIndex =  index;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const SizedBox(
                height: 50
            ),
            SizedBox(
              height: 200,
              child: PageView(
                // pageSnapping: false,
                onPageChanged: changeBottomNavigation,
                physics: const BouncingScrollPhysics(),
                children: const [
                  Image(
                      image: AssetImage(
                          'assets/images/img.png'
                      ),
                      width: 200,
                      height: 100
                  ),
                  Image(
                      image: AssetImage(
                          'assets/images/img.png'
                      ),
                      width: 200,
                      height: 100
                  ),
                  Image(
                      image: AssetImage(
                          'assets/images/img.png'
                      ),
                      width: 200,
                      height: 100
                  ),
                ],
              ),
            ),
            const SizedBox(
                height: 15
            ),
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
                height: 50
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
              onPressed: (){},
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
            Container()

          ],
        )
    );
  }
}