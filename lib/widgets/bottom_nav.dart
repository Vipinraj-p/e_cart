import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            showSelectedLabels: true,
            backgroundColor: Colors.white, //background_Color,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black54,
            selectedFontSize: 14,
            unselectedFontSize: 11,

            selectedIconTheme: IconThemeData(color: Colors.blue),
            unselectedIconTheme: IconThemeData(color: Colors.black54),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore_outlined), label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined), label: 'Categories'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: 'Account'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            ],
          );
        });
  }
}
