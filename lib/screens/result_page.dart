import 'package:bmi_calculator/components/bottom_button.dart';

import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String interpretation;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATE"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Your Result",
                    style: kTitleTextStyle,
                  ))),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(interpretation.toUpperCase(), style: kResultTextStyle),
                    Text(bmiResult, style: kBMITextStyle),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(resultText,
                          textAlign: TextAlign.center, style: kBodyTextStyle),
                    ),
                  ],
                ),
              )),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "Re-CALCULATE")
        ],
      ),
    );
  }
}
