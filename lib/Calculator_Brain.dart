import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi=0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'You are higher than Normal weight. Exercise more.';
    } else if (_bmi > 18.5) {
      return 'Your body is perfect. Just maintain it.';
    } else {
      return 'You have to increase your weight.';
    }
  }
}
