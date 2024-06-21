import 'package:bmi_calculator_app/widgets/gender_boxes.dart';
import 'package:bmi_calculator_app/widgets/height_box.dart';
import 'package:bmi_calculator_app/widgets/weight_and_age_widget.dart';
import 'package:flutter/material.dart';



class BmiMiddle extends StatelessWidget {
  const BmiMiddle({super.key, required this.height, this.onSlide, required this.weight, required this.onWeightRemove, required this.onWeightAdd});
    final double height;
   final void Function(double)? onSlide;
     final int weight;
  final void Function() onWeightRemove;
   final void Function() onWeightAdd;

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const GenderBoxes(),
            const SizedBox(height: 16),
            HeightBox( 
              height:height ,
              onSlide: onSlide
            ),
            const SizedBox(height: 16),
             WeightAndAgeWidget(
              weight: weight,
              onWeightAdd: onWeightAdd,
              onWeightRemove: onWeightRemove,
             ),
            const SizedBox(height: 16),
           
          ],
        ),
      ),
    );
  }
}
