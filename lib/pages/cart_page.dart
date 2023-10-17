import 'package:coffee_shopa_app/components/coffee_tile.dart';
import 'package:coffee_shopa_app/components/custom_button.dart';
import 'package:coffee_shopa_app/models/coffee.dart';
import 'package:coffee_shopa_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    //remove item from cart
    void removeFromCart(Coffee coffee) {
      Provider.of<CoffeeShop>(context, listen: false)
          .removeItemFromCart(coffee);
    }

    //pay Now

    void payNow() {
      /*

        payment details 

      */
    }

    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              //heading text
              const Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 25,
              ),
              //list of cart items
              Expanded(
                  child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context, index) {
                  //get indivisual cart item

                  Coffee eachCoffee = value.userCart[index];

                  //return coffee tile
                  return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(eachCoffee),
                      icon: const Icon(Icons.delete));
                },
              )),
              const SizedBox(
                height: 10,
              ),

              // pay button

              CustomButton(onTap: payNow, text: 'Pay Now')
            ],
          ),
        ),
      ),
    );
  }
}
