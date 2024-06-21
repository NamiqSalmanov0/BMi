import 'package:bmi_calculator_app/widgets/action_button.dart';
import 'package:bmi_calculator_app/widgets/box_widget.dart';
import 'package:bmi_calculator_app/widgets/number_text.dart';
import 'package:bmi_calculator_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class WeightAndAge extends StatelessWidget {
  const WeightAndAge({super.key, required this.title, required this.number, required this.onRemove, required this.onAdd});

  final String title;
  final String number;
  final void Function() onRemove;
   final void Function() onAdd;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BoxWidget(
        child: Column(
          children: [
            TitleText(title: title),
            NumberText(number: number),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(
                  icon: Icons.remove,
                  onTap:onRemove,
                ),
                const SizedBox(
                  width: 12,
                ),
                ActionButton(
                  icon: Icons.add,
                   onTap: onAdd),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
