import 'dart:developer' ;


import 'package:bmi_calculator_app/widgets/headder/bmi_footer.dart';
import 'package:bmi_calculator_app/widgets/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/headder/bmi_middle.dart';
import 'widgets/headder/header_appbar.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({
    super.key,
  });

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double height = 177.4;
  int weight = 75;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderAppbar(),
      body: BmiMiddle(
        weight: weight,
        onWeightAdd: () {
          if (weight < 200) {
            weight++;
            setState(() {});
          }
        },
        onWeightRemove: () {
          if (weight > 40) {
            weight--;
            setState(() {});
          }
        },
        height: height,
        onSlide: (v) {
          height = v;
          setState(() {});
        },
      ),
      bottomNavigationBar: BmiFooter(
        onCalculate: () {
          log('$height');
          log('$weight');
          final bmiResult = weight / (height*height)/10000;
          Navigator.push(
              context, MaterialPageRoute(builder: (_) =>   ResultPage(bmiResult: bmiResult)));
        },
      ),
    );
  }
}
