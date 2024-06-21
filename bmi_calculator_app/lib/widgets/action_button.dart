import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, this.onTap, required this.icon});
  
  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: DateTime.now(),
        backgroundColor: Colors.white30,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        onPressed: onTap,
        child:  Icon(icon)
        );
        }
}
