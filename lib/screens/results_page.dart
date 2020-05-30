import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String resultLabel;
  final String resultInterp;
  final String bmi;

  ResultsPage(
      {@required this.resultLabel,
      @required this.resultInterp,
      @required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(resultLabel, style: kResultsLabelStyle),
                    Text(
                      bmi,
                      style: kNumberTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        resultInterp,
                        style: kBaseTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                bckgColor: kStdCardColor,
              ),
            ),
            BottomButton(
                title: "Re-CALCULATE!",
                onPress: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
