import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int weight;
  final int height;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String calculateVerdict() {
    if (_bmi >= 25) return 'OVERWEIGHT';
    if (_bmi <= 18.5) return 'UNDERWEIGHT';
    return 'NORMAL';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. \n Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. \n Good job!';
    } else {
      return 'You have a lower than normal body weight. \n You can eat a bit more.';
    }
  }
}
