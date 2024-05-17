import 'package:e_cart/constants/constants.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
              style: const TextStyle(),
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Colors.black54),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.center_focus_strong_outlined,
                        color: Colors.black54),
                    kwidth10,
                    Icon(Icons.mic_none_outlined, color: Colors.black54),
                    kwidth10
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Proceed to Buy All'),
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      strokeAlign: 0,
                    ),
                    disabledBackgroundColor: Colors.white,
                    shadowColor: Colors.black,
                    backgroundColor: Color.fromARGB(90, 37, 231, 30),
                    foregroundColor: Colors.white,
                    surfaceTintColor: Colors.white),
              ),
            ),
            _CartWidget(
              size: size,
              imagePath:
                  'https://rukminim2.flixcart.com/image/832/832/xif0q/sunglass/b/g/l/-original-imagvgeupqw6w6hj.jpeg?q=70&crop=false',
              name:
                  'UV Protection Wayfarer Sunglasses (53)  (For Men & Women, Grey)',
              price: 899,
              color: ' Grey',
            ),
            _CartWidget(
              size: size,
              imagePath:
                  'https://rukminim2.flixcart.com/image/832/832/xif0q/shoe/6/x/d/-original-imagtbtffrffnvk6.jpeg?q=70&crop=false',
              name: " 480 Running Shoes For Men  (White)",
              price: 4472,
              color: 'White',
            ),
            _CartWidget(
                size: size,
                imagePath:
                    'https://rukminim2.flixcart.com/image/416/416/xif0q/headphone/m/c/u/-original-imahynvmxqzhzujs.jpeg?q=70&crop=false',
                name:
                    'boAt Nirvana Ion with 120 Hours Playback & Crystal Bionic Sound by Hifi DSP 5 Bluetooth Headset  (Charcoal Black, True Wireless)',
                price: 1799,
                color: 'Black')
          ],
        ),
      ),
    );
  }
}

class _CartWidget extends StatelessWidget {
  const _CartWidget({
    super.key,
    required this.size,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.color,
  });

  final Size size;
  final String imagePath, name, color;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: size.width - 20,
        height: 300,
        decoration: BoxDecoration(
            color: Color.fromARGB(29, 133, 216, 209),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 150,
                    child: Image.network(imagePath),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kheight10,
                      Text(
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          name,
                          style: TextStyle(
                              color: Color.fromARGB(160, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      kheight10,
                      Text('₹$price',
                          style: TextStyle(
                              color: Color.fromARGB(232, 0, 0, 0),
                              fontSize: 22,
                              fontWeight: FontWeight.w600)),
                      kheight5,
                      Text('In stock',
                          style: TextStyle(
                              color: Color.fromARGB(232, 0, 107, 41),
                              fontSize: 14,
                              fontWeight: FontWeight.w300)),
                      kheight5,
                      Row(
                        children: [
                          Text('Colour: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                          Text(color,
                              style: TextStyle(
                                  color: Color.fromARGB(195, 0, 0, 0),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      kheight5,
                      Text('7 days Replacement',
                          style: TextStyle(
                              color: Color.fromARGB(232, 2, 105, 131),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      kheight10,
                      Row(
                        children: [
                          Icon(
                            Icons.directions_car_filled_outlined,
                            color: Colors.black54,
                          ),
                          kwidth10,
                          Text('E-Cart Delivered',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Delete'),
                    style: buttonStyle),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Save for Later'),
                    style: buttonStyle),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('See more like this'),
                    style: buttonStyle),
              ],
            ),
            kheight10,
          ],
        ),
      ),
    );
  }
}
