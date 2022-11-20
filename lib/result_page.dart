import 'package:bmi_app/constant.dart';
import 'package:bmi_app/reusable.dart';
import 'package:flutter/material.dart';
import 'buttomButton.dart';



class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.getResult, required this.getAnswer, required this.calculate});
  final String getResult;
  final String getAnswer;
  final String calculate;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInActiveColor,
      appBar: AppBar(
        backgroundColor: kInActiveColor,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'YOUR RESULT',
                style: kLargeTextDesign,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getResult,
                    style: kResultDesign,
                  ),
                  Text(
                    calculate,
                    style: kScoreDesign,
                  ),
                  Text(
                    getAnswer,
                    textAlign: TextAlign.center,
                    style: kTextDesign,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomButton(
            buttonTitle: 'RE-CALCULATE',
            tapAction: () {
              Navigator.pop(context);
            },
          ))
        ],
      ),
    );
  }
}
