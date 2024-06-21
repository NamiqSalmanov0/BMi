

import 'package:flutter/material.dart';

class Calculatebutton extends StatelessWidget {
  const Calculatebutton({super.key, required this.text, required this.onCalculate});
  final String text;
  final void Function() onCalculate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCalculate,
      child:  SizedBox(
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              textAlign: TextAlign.center,
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
