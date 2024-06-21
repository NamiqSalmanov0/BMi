import 'package:bmi_calculator_app/widgets/splash_widget.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;
  
  @override
  Widget build(BuildContext context) {
    return SplashTap(
      onTap1: onTap,
      buttonColor:Colors.pink,

      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w500),
        ),
      ),
      );
  }
}
