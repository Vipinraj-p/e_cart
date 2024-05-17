import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_rounded)),
        ],
        bottom: AppBar(
          title: const Text(
            'Products For You',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.maxFinite,
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 280),
            children: const [
              ExploreCard(
                  imagePath:
                      'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/c/4/d/-original-imaghx9qygjjg8hz.jpeg',
                  name: 'iPhone 14 Plus',
                  mrp: "79,900",
                  price: "59,999",
                  off: '24.9',
                  rating: 4.6,
                  description: 'Apple iphone 14 plus (Midnight,128GB)'),
//=======================================================================================
              //dummy data
//======================================================================================
              ExploreCard(
                  imagePath:
                      'https://rukminim2.flixcart.com/image/416/416/xif0q/smartwatch/i/o/6/-original-imaghxghyggtah94.jpeg?q=70&crop=false',
                  name: 'Apple Watch SE GPS',
                  mrp: "32,900",
                  price: "29,999",
                  off: '8',
                  rating: 4.6,
                  description:
                      'Apple Watch SE GPS (2nd Gen) Heart Rate Monitor, Crash Detection, '),
              ExploreCard(
                  imagePath:
                      'https://rukminim2.flixcart.com/image/832/832/xif0q/shoe/p/y/k/9-rpd102-43-rapidbox-white-original-imags9xsg4hhgfvg.jpeg?q=70&crop=false',
                  name: 'AlphaStride Sneakers For Men',
                  mrp: "999",
                  price: "549",
                  off: '45',
                  rating: 4.1,
                  description:
                      'RapidBox AlphaStride Sneakers For Men  (White)'),
              ExploreCard(
                  imagePath:
                      'https://rukminim2.flixcart.com/image/832/832/xif0q/watch/v/f/2/-original-imagrdzghye4wtqq.jpeg?q=70&crop=false',
                  name: 'Analog Watch - For Men PE000017B',
                  mrp: "3,045",
                  price: "1,483",
                  off: '51',
                  rating: 4.3,
                  description:
                      'PETER ENGLAND Analog Watch - For Men PE000017B'),
              ExploreCard(
                  imagePath:
                      'https://rukminim2.flixcart.com/image/832/832/xif0q/watch/6/2/i/-original-imagnvwuythhzxrj.jpeg?q=70&crop=false',
                  name: 'Bold Fonts Analog Watch - For Men NN38051SM07',
                  mrp: "1,995",
                  price: "1,395",
                  off: '30',
                  rating: 4.4,
                  description:
                      'Fastrack Bold Fonts Analog Watch - For Men NN38051SM07'),
              ExploreCard(
                  imagePath:
                      'https://rukminim2.flixcart.com/image/832/832/xif0q/track-pant/7/e/n/l-sports-wear-track-pant-and-shorts-combo-yazole-original-imaghqbf6hbydtph.jpeg?q=70&crop=false',
                  name: 'Pack of 2 Solid Men Black Sports Shorts',
                  mrp: "2,999",
                  price: "379",
                  off: '87',
                  rating: 3.9,
                  description:
                      'Yazole Pack of 2 Solid Men Black Sports Shorts'),

//=======================================================================================
              //dummy data
//======================================================================================
            ],
          ),
        ),
      ),
    );
  }
}

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.mrp,
    required this.price,
    required this.off,
    required this.rating,
    required this.description,
  });
  final String imagePath, name, description, mrp, price, off;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 5, left: 2, right: 2),
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.horizontal()),
      elevation: .5,
      semanticContainer: true,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CachedNetworkImage(
                imageUrl: imagePath,
                height: 130,
              ),
            ),
            const Spacer(),
            Text(
              name,
              //'djfa',
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black38,
                  fontWeight: FontWeight.w300),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  mrp,
                  // '699',
                  style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 14,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  ' ₹$price ',
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '$off% Off',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    // fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
            RatingBarIndicator(
              rating: rating, //3.5,
              unratedColor: Colors.black12,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.green,
              ),
              itemCount: 5,
              itemSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
