

import 'package:flutter/material.dart';

import '../calculatebutton.dart';

class BmiFooter extends StatelessWidget {
  const BmiFooter({super.key, required this.onCalculate});
  final void Function() onCalculate;

  @override
  Widget build(BuildContext context) {
    return Calculatebutton(
      onCalculate: onCalculate,
      text: 'CALCULATE',
    );
  }
}
