import 'package:bmi_calculator_app/widgets/weight_and_age.dart';

import 'package:flutter/material.dart';

class WeightAndAgeWidget extends StatefulWidget {
  WeightAndAgeWidget(
      {super.key,
      required this.weight,
      required this.onWeightRemove,
      required this.onWeightAdd});

  final int weight;
  final void Function() onWeightRemove;
  final void Function() onWeightAdd;

  @override
  State<WeightAndAgeWidget> createState() => _WeightAndAgeWidgetState();
}

class _WeightAndAgeWidgetState extends State<WeightAndAgeWidget> {
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WeightAndAge(
          onAdd: widget.onWeightAdd,
          onRemove: widget.onWeightRemove,
          title: 'WEIGHT',
          number: ' ${widget.weight}',
        ),
        const SizedBox(width: 16),
        WeightAndAge(
          onAdd: () {
            if (age < 120) {
              age++;
              setState(() {});
            }
          },
          onRemove: () {
            if (age > 10) {
              age--;
              setState(() {});
            }
          },
          title: 'AGE',
          number: '$age',
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
