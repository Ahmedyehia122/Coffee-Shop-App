import 'package:coffee_shopa_app/components/coffee_tile.dart';
import 'package:coffee_shopa_app/models/coffee.dart';
import 'package:coffee_shopa_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //add coffee to cart
    void addToCart(Coffee coffee) {
      Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);

      //let user know it had been successfully added
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                backgroundColor: Colors.brown,
                title: Text('Successfully added to cart',
                    style: TextStyle(color: Colors.white)),
              ));
    }

    return Consumer<CoffeeShop>(
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                //heading message
                const Text(
                  'How would you like your coffee?',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),

                //list of coffee to buy

                Expanded(
                    child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index) {
                    //get indivisual coffee
                    Coffee eachCoffee = value.coffeeShop[index];

                    //return the tile for this coffee
                    return CoffeeTile(
                      icon: const Icon(Icons.add),
                      coffee: eachCoffee,
                      onPressed: () => addToCart(eachCoffee),
                    );
                  },
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
