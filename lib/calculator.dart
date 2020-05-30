import 'dart:math';

class CalculatorBMI {
  int height;
  int weight;
  double _bmi;

  CalculatorBMI({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print("calling calculateBMI");
    return _bmi.toStringAsFixed(1);
  }

  String getBmiLabel() {
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterp() {
    if (_bmi > 25) {
      return "Your BMI is higher than ideal - time for some excercise!";
    } else if (_bmi > 18.5) {
      return "Your BMI is in the ideal range - keep up the excercise!";
    } else {
      return "Your BMI is below the ideal range - get some meat on those bones!";
    }
  }
}
