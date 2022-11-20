import 'dart:math';

class BMIBRAIN {
  BMIBRAIN({required this.height, required this.weight}) : _bmi = -1.0;
  final int weight;
  final int height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL WEIGHT';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String getAnswer() {
    if (_bmi >= 25) {
      return 'Your BMI result is quite high, you should exercise more and watch  your diet';
    } else if (_bmi > 18.5) {
      return 'Your BMI result is good, you should maintain it';
    } else {
      return 'Your BMI result is quite low, you should eat more';
    }
  }
}
