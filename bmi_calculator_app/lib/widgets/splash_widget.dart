import 'package:flutter/material.dart';

class SplashTap extends StatelessWidget {

  const SplashTap({ super.key, this.onTap1, required this.child,  this.buttonRadius=12,  this.buttonColor=Colors.pink });
  final void Function()? onTap1;
  final Widget child;
  final double buttonRadius;
  final Color buttonColor;

   @override
   Widget build(BuildContext context) {
       return Ink(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(buttonRadius))),
         child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(buttonRadius)),
          onTap:onTap1 ,
          child:child ,
         
         ),
       );
  }
}