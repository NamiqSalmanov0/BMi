import 'package:bmi_calculator_app/bmi_page.dart';
import 'package:bmi_calculator_app/widgets/number_text.dart';
import 'package:flutter/material.dart';

import 'calculatebutton.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.bmiResult});

  final double bmiResult;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late String middleweightResult;
  late String resultText;
  late Color tittleColor;

  @override
  void initState() {
    weightCheck();
    super.initState();
  }

  void weightCheck() {
    if (widget.bmiResult > 18 && widget.bmiResult < 25) {
      middleweightResult = 'Normal';
      resultText = 'Completly Good Job';
      tittleColor = Colors.green;
    } else if (widget.bmiResult < 18) {
      middleweightResult = 'LigthWeight';
      resultText = 'Leight Weight';
      tittleColor = Colors.red;
    } else {
      middleweightResult = 'HeightWeigth';
      resultText = 'HeightWeigth';
      tittleColor = Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMİ CALCULATOR'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: const TextStyle(fontSize: 24, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'YOUR RESULT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color(0xff1E1F32),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      resultText,
                      style: TextStyle(color: tittleColor, fontSize: 30),
                    ),
                    NumberText(
                      number: widget.bmiResult.toStringAsFixed(1),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 67),
                    ),
                    Text(
                      resultText,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Calculatebutton(
        onCalculate: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => BmiPage()));
        },
        text: 'RE-CALCULATE',
      ),
    );
  }
}
