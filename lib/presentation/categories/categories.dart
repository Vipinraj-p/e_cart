import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_cart/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('All Categories'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.mic))
          ],
        ),
        body: SafeArea(
            child: Row(
          children: [
            Container(
                width: 100,
                height: double.infinity,
                color: const Color.fromARGB(17, 68, 80, 82),
                child: ListView(
                  children: const [
                    AllCategories(
                        imageUrl:
                            'https://www.freepnglogos.com/uploads/shopping-bag-png/shopping-bag-plaseto-bag-plaseto-bags-manufacturer-west-bengal-17.png',
                        name: 'For You'),
                    AllCategories(
                        imageUrl:
                            'https://rukminim2.flixcart.com/flap/64/64/image/29327f40e9c4d26b.png?q=100',
                        name: 'Grocery'),

                    AllCategories(
                        imageUrl:
                            'https://static.vecteezy.com/system/resources/previews/026/721/203/original/washing-machine-and-laundry-laundry-sticker-png.png',
                        name: 'Appliances'),
                    AllCategories(
                        imageUrl:
                            'https://rukminim2.flixcart.com/flap/64/64/image/22fddf3c7da4c4f4.png?q=100',
                        name: 'Mobiles'),
                    AllCategories(
                        imageUrl:
                            'https://www.pngall.com/wp-content/uploads/5/Samsung-TV-PNG-Clipart.png',
                        name: 'Electronics'),
                    AllCategories(
                        imageUrl:
                            'https://freepngimg.com/thumb/categories/2356.png',
                        name: 'Home'),
                    AllCategories(
                        imageUrl:
                            'https://www.pngall.com/wp-content/uploads/2016/06/Furniture-PNG-Clipart.png',
                        name: 'Furniture'),
                    AllCategories(
                        imageUrl:
                            'https://cdni.iconscout.com/illustration/premium/thumb/skin-care-product-9774568-7974586.png',
                        name: 'Personal Care'),
                    AllCategories(
                        imageUrl: 'https://pngimg.com/d/teddy_bear_PNG57.png',
                        name: 'Toys & Baby'),
                    //gggg
                    AllCategories(
                        imageUrl:
                            'https://cdn3d.iconscout.com/3d/premium/thumb/food-and-drink-5727926-4800418.png?f=webp',
                        name: 'Food & More'),
                    AllCategories(
                        imageUrl:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Sport_balls.svg/800px-Sport_balls.svg.png',
                        name: 'Sports Hub'),
                    AllCategories(
                        imageUrl:
                            'https://rukminim1.flixcart.com/flap/64/64/image/71050627a56b4693.png?q=100',
                        name: 'Travel'),

                    AllCategories(
                        imageUrl: 'https://pngimg.com/d/gift_PNG100372.png',
                        name: 'Gift cards'),
                    AllCategories(
                        imageUrl:
                            'https://www.moralpharma.com/images/newpharma.png',
                        name: 'Medicines'),
                    AllCategories(
                        imageUrl:
                            'https://www.odtap.com/wp-content/uploads/2019/03/home-services.png',
                        name: 'Home Services'),
                    AllCategories(
                        imageUrl:
                            'https://www.pngall.com/wp-content/uploads/2/Sports-Bike-PNG-Picture.png',
                        name: 'Bike & Scooters'),
                    AllCategories(
                        imageUrl:
                            'https://static.vecteezy.com/system/resources/thumbnails/019/616/875/small/insurance-hands-and-shield-png.png',
                        name: 'Insurance'),
                  ],
                )),
            SizedBox(
                width: size.width - 100,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView(
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Popular Store',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            wordSpacing: 2,
                            fontSize: 14,
                          )),
                      kheight10,
                      SizedBox(
                        width: size.width - 100,
                        height: 360,
                        child: GridView(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, mainAxisExtent: 120),
                          children: const [
                            CustomCircleAvatar(
                              imgPath:
                                  'https://roobai.com/assets/img/sale_cat_img/qCK8v.png',
                              name: 'Sale is Live',
                            ),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://i.pinimg.com/originals/77/12/47/77124761f8510f6df2fd307827e28505.png',
                                name: 'Cricket Fever'),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://cdn-icons-png.flaticon.com/512/66/66841.png',
                                name: 'One Day delivery'),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://www.pngall.com/wp-content/uploads/13/Galaxy-S23-Ultra-PNG-Clipart.webp',
                                name: 'mobiles'),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://static.vecteezy.com/system/resources/previews/030/351/270/non_2x/cosmetics-images-ai-generative-free-png.png',
                                name: 'makeup'),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://www.pngall.com/wp-content/uploads/5/Bluetooth-Headset-PNG-Free-Image.png',
                                name: 'Bluetooth Headphones'),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSagXlg5ZOBrWXkz70o52oU-4Z3cLaP1UBg5xzFFtJKCw&s',
                                name: 'travel'),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://www.pngall.com/wp-content/uploads/14/Down-Arrow-PNG-Images.png',
                                name: 'View All'),
                          ],
                        ),
                      ),
                      const Text('Have you tried',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            wordSpacing: 2,
                            fontSize: 14,
                          )),
                      kheight10,
                      SizedBox(
                        width: size.width - 100,
                        height: 330,
                        child: GridView(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, mainAxisExtent: 120),
                          children: const [
                            CustomCircleAvatar(
                              imgPath:
                                  'https://www.payway.com/wp-content/uploads/hero-img-20.png',
                              name: 'Scan & Pay',
                              color: Color.fromARGB(106, 132, 181, 247),
                            ),
                            CustomCircleAvatar(
                              imgPath:
                                  'https://cdn3d.iconscout.com/3d/premium/thumb/game-coin-11210836-9006795.png',
                              name: 'SuperCoin',
                              color: Color.fromARGB(150, 255, 230, 163),
                            ),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://icons.veryicon.com/png/o/commerce-shopping/o2o-business-platform/coupon-59.png',
                                name: 'Coupons',
                                color: Color.fromARGB(83, 235, 147, 141)),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://cdn3d.iconscout.com/3d/premium/thumb/postpaid-bill-payment-2870168-2386920.png',
                                name: 'Bills & Reacharge',
                                color: Color.fromARGB(82, 141, 166, 235)),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Money_Flat_Icon.svg/800px-Money_Flat_Icon.svg.png',
                                name: 'Money +',
                                color: Color.fromARGB(82, 141, 235, 149)),
                            CustomCircleAvatar(
                                imgPath: 'https://postalrmsbank.in/im/l1.png',
                                name: 'Personal Loan',
                                color: Color.fromARGB(82, 141, 182, 235)),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://styles.redditmedia.com/t5_2qph1/styles/communityIcon_j1e4i0asql951.png',
                                name: 'Free Credit Score',
                                color: Color.fromARGB(82, 198, 253, 190)),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://cdn2.iconfinder.com/data/icons/fire-flame-1/500/nim1040_7_burn_fire_flame_frame_-512.png',
                                name: 'FireDrops',
                                color: Color.fromARGB(82, 235, 194, 141)),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://static.thenounproject.com/png/94050-200.png',
                                name: 'Become a Seller',
                                color: Color.fromARGB(82, 190, 141, 235)),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://static.vecteezy.com/system/resources/previews/027/688/016/non_2x/a-blue-and-orange-play-button-icon-free-png.png',
                                name: 'LiveShop +',
                                color: Color.fromARGB(82, 141, 179, 235)),
                            CustomCircleAvatar(
                                imgPath:
                                    'https://www.pngall.com/wp-content/uploads/14/Down-Arrow-PNG-Images.png',
                                name: 'ViewAll',
                                color: Color.fromARGB(82, 141, 235, 230))
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        )));
  }
}

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.imgPath,
    required this.name,
    this.color = const Color.fromARGB(34, 135, 147, 150),
    this.offData = '',
    this.fontSize = 10,
  });
  final String imgPath, name;
  final Color color;
  final String offData;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 40,
              backgroundImage: NetworkImage(imgPath),
            ),
            Positioned(
              bottom: 0,
              child: Text(
                offData,
                style: TextStyle(
                    backgroundColor: Colors.indigo[500],
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        kheight5,
        Text(name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: fontSize,
            ))
      ],
    );
  }
}

class AllCategories extends StatelessWidget {
  const AllCategories({
    super.key,
    required this.imageUrl,
    required this.name,
  });
  final String imageUrl, name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight5,
        CachedNetworkImage(
          imageUrl: imageUrl,
          //memCacheHeight: 50,
          //width: 60,
          height: 50,
          useOldImageOnUrlChange: true,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.blue[800],
            fontSize: 12,
          ),
        ),
        kheight5,
        const Divider(),
      ],
    );
  }
}
