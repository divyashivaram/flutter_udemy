import 'dart:math';

class BmiCalculator {
  double calculateBmi(height, weight) {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String bmiResult(bmi) {
    if (bmi > 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String bmiRange(bmi) {
    if (bmi > 25) {
      return 'Overweight Range';
    } else if (bmi > 18.5) {
      return 'Normal Range';
    } else {
      return 'underweight Range';
    }
  }

  String bmiDetailedResult(bmi) {
    if (bmi > 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Keep it up.';
    } else {
      return 'You have a lower than normal body weight. Eat more pizza.';
    }
  }
}
