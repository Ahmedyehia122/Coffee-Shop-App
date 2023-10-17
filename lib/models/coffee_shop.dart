import 'package:coffee_shopa_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale

  final List<Coffee> _shop = [
    //coffee
    Coffee(
        name: 'Coffee', price: '\$ 4.10', imagePath: 'lib/images/coffee.png'),

    //hot-coffee
    Coffee(
        name: 'Hot coffee',
        price: '\$ 3.80',
        imagePath: 'lib/images/hot-coffee.png'),

    //ice-coffee
    Coffee(
        name: 'Ice coffee',
        price: '\$ 5.50',
        imagePath: 'lib/images/ice-coffee.png'),

    //latte
    Coffee(name: 'Latte', price: '\$ 2.65', imagePath: 'lib/images/latte.png'),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list

  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart

  void removeItemFromCart(Coffee coffee) {
    userCart.remove(coffee);
    notifyListeners();
  }
}
