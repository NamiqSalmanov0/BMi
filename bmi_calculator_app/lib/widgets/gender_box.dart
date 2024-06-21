import 'package:bmi_calculator_app/widgets/box_widget.dart';
import 'package:bmi_calculator_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({super.key, required this.icon, required this.title,  required this.onTap, required this.color});
  final IconData icon;
  final String title;
   final void Function() onTap;
   final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: BoxWidget(
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 112,
              ),
              const SizedBox(
                height: 4,
              ),
              TitleText(title: title),
            ],
          ),
        ),
      ),
    );
  }
}
