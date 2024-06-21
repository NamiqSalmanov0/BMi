

import 'package:bmi_calculator_app/widgets/box_widget.dart';
import 'package:bmi_calculator_app/widgets/number_text.dart';

import 'package:flutter/material.dart';

import 'title_text.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({super.key, required this.height, this.onSlide});
  final double height;
   final void Function(double)? onSlide;

  @override
  Widget build(BuildContext context) {
    return BoxWidget(
      child: Column(
        children: [
          const TitleText(title: 'HEIGHT'),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              NumberText(number: height.toStringAsFixed(1)),
              const SizedBox(
                width: 1,
              ),
              const TitleText(title: 'cm'),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Slider.adaptive(
                value:height,
                thumbColor: Colors.pink,
                activeColor: Colors.white,
                inactiveColor: Colors.white12,
                min: 150,
                max: 190,
                onChanged: onSlide),
          ),
        ],
      ),
    );
  }
}
