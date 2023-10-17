import 'package:coffee_shopa_app/components/custom_button.dart';
import 'package:coffee_shopa_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Image.asset(
                  'lib/images/coffee.png',
                  height: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                //intro text
                const Text(
                  'Brew Day',
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'How would you like your coffee?',
                  style: TextStyle(
                    color: Colors.brown[800],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),

                CustomButton(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                    },
                    text: 'Enter Shop')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
