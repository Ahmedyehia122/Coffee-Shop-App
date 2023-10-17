import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  void Function()? onTap;
  String text;
  CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(25),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.brown[800],
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          )),
    );
  }
}
