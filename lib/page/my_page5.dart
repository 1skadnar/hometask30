import 'package:flutter/material.dart';

class Page8 extends StatefulWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  int quantity = 1; int quantity1 = 0 ;int quantity2 = 0;

  void updateQuantity(int value) {
    if (quantity + value > 0) {
      setState(() {
        quantity += value;
      });
    }
  }
  void updateQuantity1(int value) {
    if (quantity1 + value > 0) {
      setState(() {
        quantity1 += value;
      });
    }
  }
  void updateQuantit2(int value) {
    if (quantity2 + value > 0) {
      setState(() {
        quantity2 += value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Card',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          TextButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Page8()),);},
            child: const Text("Next", style: TextStyle(color: Colors.red),),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/img_7.png',width: 150,height: 150),
              const SizedBox(width: 80),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Product Price : \$${calculatePrice()}',
                            style: const TextStyle(fontSize: 15),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () => updateQuantity(1),
                                child: const Icon(Icons.add),
                              ),
                              const SizedBox(width: 25),
                              Text(
                                '$quantity',
                                style: const TextStyle(fontSize: 20),
                              ),
                              const SizedBox(width: 25),
                              ElevatedButton(
                                onPressed: () => updateQuantity(-1),
                                child: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/img_7.png',width: 150,height: 150),
              const SizedBox(width: 80),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Product Price : \$${calculatePrice1()}',
                            style: const TextStyle(fontSize: 15),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () => updateQuantity1(1),
                                child: const Icon(Icons.add),
                              ),
                              const SizedBox(width: 25),
                              Text(
                                '$quantity1',
                                style: const TextStyle(fontSize: 20),
                              ),
                              const SizedBox(width: 25),
                              ElevatedButton(
                                onPressed: () => updateQuantity1(-1),
                                child: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/img_7.png',width: 150,height: 150),
              const SizedBox(width: 80),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Product Price : \$${calculatePrice2()}',
                            style: const TextStyle(fontSize: 15),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () => updateQuantit2(1),
                                child: const Icon(Icons.add),
                              ),
                              const SizedBox(width: 25),
                              Text(
                                '$quantity2',
                                style: const TextStyle(fontSize: 20),
                              ),
                              const SizedBox(width: 25),
                              ElevatedButton(
                                onPressed: () => updateQuantit2(-1),
                                child: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 100),
          const Row(
            children: [
              SizedBox(width: 60),
              Text('Cart Total:',style: TextStyle(fontSize: 25),),
              SizedBox(width: 250),
              Text('all Price',style: TextStyle(fontSize: 25),),
            ],
          ),
          const SizedBox(height: 50),
          const Row(
            children: [
              SizedBox(width: 60),
              Text('Deliver to Leslie: ',style: TextStyle(fontSize: 25),),
              SizedBox(width: 150),
              Column(
                children: [
                  Text('2972 Westheimer Rd.'),
                  Text('Santa Ana,Illinois  '),
                  Text('85486'),

                ],
              )
            ],
          )

        ],
      ),
    );
  }
  double calculatePrice() {
    double basePrice = 25;

    return basePrice * quantity;
  }
  double calculatePrice1() {
    double basePrice1 = 25;

    return basePrice1 * quantity1;
  }
  double calculatePrice2() {
    double basePrice2 = 25;

    return basePrice2 * quantity2;
  }
}