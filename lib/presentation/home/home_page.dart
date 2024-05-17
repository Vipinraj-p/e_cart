import 'package:e_cart/constants/constants.dart';
import 'package:e_cart/presentation/grocery/grocery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

List assetimageList = [
  "asset/logos/Scan_Pay.png",
  "asset/logos/Mobiles.png",
  "asset/logos/fashion.png",
  "asset/logos/tvs_appliances.png",
  "asset/logos/beauty_toys.png",
  "asset/logos/smart_gadgets.png",
  "asset/logos/Electronics.png",
  "asset/logos/home_furniture.png",
  "asset/logos/flights_buses_more.png",
  "asset/logos/grocery.png",
];
List assetTextList = [
  "Scan & Pay",
  "Mobiles",
  "Fashion",
  "TVs & Appliances",
  "Beauty,Toys",
  "Smart Gadgets",
  "Electronics",
  "Home Furniture",
  "Flights,buses & more",
  "Grocery",
];

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final List<String> flipkartCarouselImageUrlList = [
    "https://rukminim1.flixcart.com/flap/700/300/image/b0e088ff138c58be.jpg?q=90",
    "https://rukminim1.flixcart.com/flap/700/300/image/aebf043a3a4f15d6.jpg?q=90",
    "https://rukminim1.flixcart.com/flap/700/300/image/c16af8723f41e655.jpeg?q=90",
    "https://rukminim1.flixcart.com/flap/700/300/image/a395b780f474838c.jpg?q=90",
    "https://rukminim1.flixcart.com/flap/700/300/image/714233634472f340.jpeg?q=90",
    "https://rukminim1.flixcart.com/flap/700/300/image/24d2d83a84eee76b.jpg?q=90",
    "https://rukminim1.flixcart.com/flap/700/300/image/b92081b232f55ec0.jpeg?q=90",
    "https://rukminim1.flixcart.com/flap/700/300/image/4786aae94e794340.jpg?q=90",
  ];

  int _current = 0;
  bool _switchValue = true;
  String _switchText = 'ON';

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: TabBar(
            labelStyle: GoogleFonts.ubuntu(
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            tabs: const [Tab(text: '🛒 E-Cart'), Tab(text: '🛍 Grocery')],
            indicatorPadding: const EdgeInsets.symmetric(horizontal: -50),
            labelColor: Colors.blue[800],
            indicatorColor: Colors.blue[800],
            unselectedLabelColor: Colors.black45,
            overlayColor: MaterialStatePropertyAll(Colors.blue[100]),
            splashBorderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          body: TabBarView(children: [
            eCart(context),
            const Grocery(),
          ])),
    );
  }

//==================
//E-Cart
//==================
  SafeArea eCart(BuildContext context) {
    return SafeArea(
        child: ListView(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text(
                  'Brand Mall',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                Stack(
                  children: [
                    CupertinoSwitch(
                        applyTheme: true,
                        activeColor: Colors.black,
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                            if (_switchValue == true) {
                              _switchText = 'ON';
                            } else {
                              _switchText = 'OFF';
                            }
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 6),
                      child: Text(
                        _switchText,
                        style:
                            const TextStyle(color: Colors.green, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ],
            ),
            kwidth10,
            // ToggleButtons(
            //     borderWidth: 20,
            //     tapTargetSize: MaterialTapTargetSize.padded,
            //     borderRadius: BorderRadius.circular(10),
            //     children: [Grocery()],
            //     isSelected: [true]),
            SizedBox(
              width: 350,
              height: 50,
              child: TextField(
                style: const TextStyle(),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.mic_none_outlined)),
              ),
            ),
          ],
        ),
        kheight20,
        CarouselSlider.builder(
            carouselController: _controller,
            itemCount: flipkartCarouselImageUrlList.length,
            itemBuilder: (context, index, realIndex) => CachedNetworkImage(
                imageUrl: flipkartCarouselImageUrlList[index]),
            // items: flipkartCarouselImageUrlList
            //     .map((deal) => GestureDetector(
            //           onTap: () {
            //             // todo -> navigate to someplace
            //           },
            //           child: CachedNetworkImage(
            //             imageUrl: deal,
            //           ),
            //         ))
            //     .toList(),
            options: CarouselOptions(
              autoPlayCurve: Curves.ease,
              enlargeCenterPage: true,
              pageSnapping: true,
              padEnds: true,
              autoPlay: true,
              height: 150,
              enlargeFactor: 0.2,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            )),
        //carousel indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: flipkartCarouselImageUrlList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 5,
                height: 5,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        kheight20,
        Container(
          height: 260,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white,
            Color.fromARGB(100, 242, 184, 255),
            Color.fromARGB(100, 242, 184, 255),
            Colors.white
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, mainAxisExtent: 130),
            itemCount: assetTextList.length,
            itemBuilder: (context, index) => _CustomWavyButton(
                imgPath: assetimageList[index],
                buttonName: assetTextList[index]),
          ),
        ),

        kheight20,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
                imageUrl:
                    'https://m.media-amazon.com/images/S/al-eu-726f4d26-7fdb/0e6fd0a2-d6d4-42a6-a843-6d78bfd32615.jpg'),
          ),
        ),
        kheight20,
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'BRANDS OF THE DAY',
            style: GoogleFonts.cinzel(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity - 20,
            height: 160,
            child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    mainAxisExtent: 160),
                shrinkWrap: true,
                children: const [
                  BrandsOfTheDay(
                      imagePath:
                          'https://pngimg.com/uploads/gas_stove/gas_stove_PNG66.png',
                      name: 'Cooker Gas& Stove',
                      moreData: 'Up to 70% Off'),
                  BrandsOfTheDay(
                      imagePath:
                          'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/c/4/d/-original-imaghx9qygjjg8hz.jpeg',
                      name: 'iPhone 14 Plus',
                      moreData: 'Just ₹59,999*'),
                  BrandsOfTheDay(
                      imagePath:
                          'https://www.pngall.com/wp-content/uploads/15/Apple-Watch-No-Background.png',
                      name: 'Apple Smartwatches',
                      moreData: 'From ₹26,999'),
                ]),
          ),
        ),

        kheight20,
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
          child: Text(
            'SUGGESTED FOR YOU',
            style: GoogleFonts.cinzel(
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity - 20,
            height: 330,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    mainAxisExtent: 160),
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) => SuggestedForYouWidget(
                    imgUrl: suggestedForYouImgList[index],
                    itemName: suggestedForYouItemName[index],
                    mrp: suggestedForYouMRP[index],
                    price: suggestedForYouPrice[index])),
          ),
        ),
      ],
    ));
  }
}

class BrandsOfTheDay extends StatelessWidget {
  const BrandsOfTheDay({
    super.key,
    required this.imagePath,
    required this.name,
    required this.moreData,
  });
  final String imagePath;
  final String name;
  final String moreData;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(73, 213, 218, 219),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CachedNetworkImage(memCacheHeight: 100, imageUrl: imagePath),
            kheight10,
            Container(
              width: double.infinity,
              color: Colors.black,
              child: Text(
                name,
                //'Cooker Gas& Stove',
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Text(
                moreData,
                //'itemName',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List suggestedForYouImgList = [
  'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRGCEjJdPOV7Vu04vTNgzixOL_dlaMPJwkXkaaRQAtfukxLK3CYMM9daa5DEL2WmX5XTVruLhQu-c2lfLGCghemz0R4XfnZLsL7hsRiMFYjNopOnQ6PFsftdNU',
  'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/x/c/t/-original-imagxsc4ufzm64uz.jpeg?q=70&crop=false',
  'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/6/x/t/-original-imagtc6ffhgm3f2g.jpeg?q=70&crop=false',
  'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/c/4/d/-original-imaghx9qygjjg8hz.jpeg',
  'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/4/7/c/-original-imagzrfwawrb9fzx.jpeg',
  'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/j/q/2/edge-40-neo-payj0001in-motorola-original-imagtkf5ewhafvhh.jpeg'
];
List suggestedForYouItemName = [
  'Apple iPhone 14 Plus',
  'Infinix SMART 8',
  'Apple iPhone 15 Plus',
  'Apple iPhone 14 Plus',
  'REDMI Note 13 5G',
  'Motorola Edge 40 Neo'
];
List suggestedForYouMRP = [
  '79,900',
  '10,999',
  '59,900',
  '79,900',
  '20,999',
  '27,999'
];
List suggestedForYouPrice = [
  '59,999',
  '7,999',
  '71,999',
  '59,999',
  '16,999',
  '20,999',
];

class SuggestedForYouWidget extends StatelessWidget {
  const SuggestedForYouWidget({
    super.key,
    required this.imgUrl,
    required this.itemName,
    required this.mrp,
    required this.price,
  });
  final String imgUrl;
  final String itemName;
  final String mrp;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(strokeAlign: .01, color: Colors.black26)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Stack(
              children: [
                CachedNetworkImage(memCacheHeight: 100, imageUrl: imgUrl),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Container(
                    width: 45,
                    height: 20,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 237, 238, 240),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('4.6 '),
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 12,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Text(
              itemName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Text(
                  mrp,
                  style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.black45,
                      color: Colors.black45),
                ),
                Text(
                  '  ₹$price',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//==================
//Custom Wavy Button
//==================

class _CustomWavyButton extends StatelessWidget {
  const _CustomWavyButton({
    //super.key,
    required this.imgPath,
    required this.buttonName,
  });
  final String imgPath;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipPath(
          clipper: WavyCircleClipper(30),
          child: Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 235, 172, 247), Colors.white],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                imgPath,
                scale: 1.5,
              ),
            ),
          ),
        ),
        kheight10,
        Text(
          buttonName,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12),
        )
      ],
    );
  }
}
