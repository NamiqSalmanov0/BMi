import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  const NumberText({super.key, required this.number, this.style});
  final String number;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style:  style 
      ?? const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
