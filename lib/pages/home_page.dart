import 'package:coffee_shopa_app/components/buttom_nav_bar.dart';
import 'package:coffee_shopa_app/const.dart';
import 'package:coffee_shopa_app/pages/cart_page.dart';
import 'package:coffee_shopa_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages

  final List<Widget> _pages = [
    //ShopPage
    const ShopPage(),

    //cartPage
    const CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
