import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getDetails() {
    if (_bmi >= 25.0)
      return 'You\'re Overweight. Exercise more!';
    else if (_bmi > 18.5)
      return 'You\'ve Normal body weight!';
    else
      return 'You\'re underweight. Eat More!';
  }
}
