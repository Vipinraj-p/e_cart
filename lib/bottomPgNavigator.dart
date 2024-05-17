import 'package:e_cart/presentation/account/account.dart';
import 'package:e_cart/presentation/cart/cart.dart';
import 'package:e_cart/presentation/categories/categories.dart';
import 'package:e_cart/presentation/explore/explore.dart';
import 'package:e_cart/presentation/home/home_page.dart';
import 'package:e_cart/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class BottomPageNavigation extends StatelessWidget {
  BottomPageNavigation({super.key});
  final List _pages = [
    MainHomePage(),
    Explore(),
    Categories(),
    Account(),
    Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) => _pages[index],
      )),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
