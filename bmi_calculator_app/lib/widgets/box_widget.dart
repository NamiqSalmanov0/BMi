import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
   const BoxWidget({super.key,  
   required this.child,
    this.color= const Color(0xff1E1F32)});

 
  final Widget child;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      decoration:  BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: child
    );
  }
}
