import 'package:bmi_calculator_app/widgets/gender_box.dart';
import 'package:flutter/material.dart';

class GenderBoxes extends StatefulWidget {
  const GenderBoxes({super.key});

  @override
  State<GenderBoxes> createState() => _GenderBoxesState();
}

class _GenderBoxesState extends State<GenderBoxes> {
  Color maleColor = const Color(0xff1E1F32);
  Color femaleColor = const Color(0xff1E1F32);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GenderBox(
          icon: Icons.male,
          title: 'MALE',
          onTap: () {
            if (maleColor != Colors.pink) {
              setState(() {
                maleColor = Colors.pink;
                femaleColor = const Color(0xff1E1F32);
              });
            }
          },
          color: maleColor,
        ),
        const SizedBox(
          width: 16,
        ),
        GenderBox(
          icon: Icons.female,
          title: 'FEMALE',
          onTap: () {
            if (femaleColor != Colors.pink) {
              setState(() {
                femaleColor = Colors.pink;
                maleColor = const Color(0xff1E1F32);
              });
            }
          },
          color: femaleColor,
        ),
      ],
    );
  }
}
