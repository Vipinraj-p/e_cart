import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_cart/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(
                'asset/DP10.jpg',
              ),
            ),
            Text(
              '  Hello, Anuktha',
              style: GoogleFonts.ubuntu(
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400)),
            ),
            const Icon(Icons.expand_more)
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              kheight10,
              SizedBox(
                width: double.infinity,
                height: 160,
                child: Stack(
                  children: [
                    ClipPath(
                        clipper: OvalBottomBorderClipper(),
                        child: Container(
                          height: 160,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                // Colors.white10,
                                // Color.fromARGB(255, 235, 172, 247),
                                Color.fromARGB(85, 235, 172, 247),
                                Color.fromARGB(85, 113, 183, 241),
                              ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                        )),
                    ClipPath(
                        clipper: WaveClipperOne(flip: true),
                        child: Container(
                          height: 160,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                // Colors.white10,
                                // Color.fromARGB(255, 235, 172, 247),
                                Color.fromARGB(85, 235, 172, 247),
                                Color.fromARGB(85, 113, 183, 241),
                              ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: GridView(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 40,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Your Orders',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Buy Again',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Your Account',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Your Lists',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Orders',
                    style: GoogleFonts.cinzel(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  Text('See All',
                      style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.w300,
                          color: Colors.tealAccent[700])),
                ],
              ),
              SizedBox(
                  width: double.infinity,
                  height: 160,
                  child: GridView(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisExtent: 150,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      children: [
                        Card(
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://rukminim2.flixcart.com/image/416/416/xif0q/smartwatch/i/o/6/-original-imaghxghyggtah94.jpeg?q=70&crop=false',
                            memCacheHeight: 100,
                          ),
                        ),
                        Card(
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/c/4/d/-original-imaghx9qygjjg8hz.jpeg',
                            memCacheHeight: 100,
                          ),
                        ),
                        Card(
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://rukminim2.flixcart.com/image/832/832/xif0q/shirt/k/0/6/xl-blue-box-check-cotton-men-shirt-latest-design-trendy-unique-original-imagrvwhrafrshzt.jpeg?q=70&crop=false',
                            memCacheHeight: 100,
                          ),
                        )
                      ])),
              kheight10,
              const Divider(
                thickness: 2,
              ),
              kheight50,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Account',
                    style: GoogleFonts.cinzel(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  Text('See All',
                      style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.w300,
                          color: Colors.tealAccent[700])),
                ],
              ),
              kheight10,
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: GridView(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisExtent: 220,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      children: const [
                        Card(
                            child: Center(
                                child: Text(
                          'Your Orders',
                          style: accountTextStyle,
                        ))),
                        Card(
                            child: Center(
                                child: Text(
                          'Your Address',
                          style: accountTextStyle,
                        ))),
                        Card(
                            child: Center(
                                child: Text(
                          'Top-Up Your Wallet',
                          style: accountTextStyle,
                        ))),
                        Card(
                            child: Center(
                                child: Text(
                          'View Balance Statement',
                          style: accountTextStyle,
                        ))),
                        Card(
                            child: Center(
                                child: Text(
                          'Manage Your Profiles',
                          style: accountTextStyle,
                        ))),
                        Card(
                            child: Center(
                                child: Text(
                          'UPI',
                          style: accountTextStyle,
                        ))),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
