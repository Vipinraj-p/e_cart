import 'package:e_cart/constants/constants.dart';
import 'package:e_cart/presentation/categories/categories.dart';
import 'package:flutter/material.dart';

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 50,
              child: TextField(
                style: const TextStyle(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Search',
                  prefixIcon: const Icon(Icons.search, color: Colors.black54),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.checklist_outlined, color: Colors.black),
                      kwidth10,
                      Icon(Icons.mic_none_outlined, color: Colors.black54),
                      kwidth10
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: const Text('Shop by Category',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 16, 117, 199),
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: size.width,
                height: 450,
                child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisExtent: 150,
                            crossAxisSpacing: 10),
                    children: const [
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/416/416/xif0q/flour/4/9/2/2-certified-organic-whole-wheat-flour-stone-ground-100-whole-original-imagmv7bqadjucpw.jpeg?q=70&crop=false',
                        name: 'Atta,Rice & Dal',
                        offData: 'Up to 40% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/416/416/xif0q/ready-meal/t/v/t/-original-imagjxxfcpmemz23.jpeg?q=70&crop=false',
                        name: 'Spices, Salt & Sugar',
                        offData: 'Up to 60% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/416/416/xif0q/edible-oil/j/v/q/6-gold-refined-cooking-rice-bran-sunflower-can-1-blended-oil-original-imagwyvf9wygpf2q.jpeg?q=70&crop=false',
                        name: 'Oil & Ghee',
                        offData: 'Up to 60% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/416/416/kwv0djk0/nut-dry-fruit/t/l/6/-original-imag9fuswbq7uews.jpeg?q=70&crop=false',
                        name: 'Dry Fruits,Nuts & Seeds',
                        offData: 'Up to 50% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/416/416/kz7bcsw0/chips/z/6/x/100-combo-pack-of-potato-chips-piri-piri-lime-chips-flavor-100-original-imagb9hy7qg2j8kg.jpeg?q=70&crop=false',
                        name: 'Snacks & Packaged Food',
                        offData: 'Up to 65% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/416/416/xif0q/aerated-drink/f/z/9/1-5-wild-berry-bubbly-fruit-drink-can-6-rio-original-imagysbfu9jcvccz.jpeg?q=70&crop=false',
                        name: 'Bevarages',
                        offData: 'Up to 60% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/416/416/xif0q/chocolate/t/5/a/-original-imahyuhmzrz6jwkk.jpeg?q=70&crop=false',
                        name: 'Chocolates & Sweets',
                        offData: 'Up to 60% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/612/612/xif0q/dish-cleaning-gel/g/e/9/lemon-dish-wash-liquid-bottle-1-biovidhan-original-imagxx7ycm5xrhbe.jpeg?q=70',
                        name: 'Laundry & Dishwash',
                        offData: 'Up to 60% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/612/612/kljrvrk0/combo-kit/j/c/u/herbal-skin-care-combo-products-kit-pack-lemon-honey-face-wash-1-original-imagyn9kdwrgnmw5.jpeg?q=70',
                        name: 'Body & Skin Care',
                        offData: 'Up to 60% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/612/612/xif0q/hair-serum/o/o/m/200-alips-rosemary-water-hair-spray-for-regrowth-hair-growth-original-imahyvxyqn3d5xfy.jpeg?q=70',
                        name: 'Hair Care',
                        offData: 'Up to 60% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/612/612/xif0q/mouthwash/v/d/e/250-mouthwash-complete-protection-all-in-one-mouth-wash-for-original-imagtzuabfmxmgw2.jpeg?q=70',
                        name: 'Oral Care & Wellness',
                        offData: 'Up to 60% Off',
                        fontSize: 14,
                      ),
                      CustomCircleAvatar(
                        imgPath:
                            'https://rukminim2.flixcart.com/image/612/612/xif0q/toilet-cleaner/k/i/f/na-3-original-powerplus-1000-ml-pack-of-2-bathroom-cleaner-lemon-original-imagutjwpgb29gsp.jpeg?q=70',
                        name: 'Household & Cleaning',
                        offData: 'Up to 50% Off',
                        fontSize: 14,
                      ),
                    ])),
          ),
        ],
      )),
    );
  }
}
