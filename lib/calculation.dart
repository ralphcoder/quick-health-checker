import 'dart:math';

class calculation {
  calculation({this.heightt, this.weightt});
  final int heightt;
  final int weightt;
  double no;
  String calculateno() {
    no = weightt / pow(heightt / 100, 2);
    return no.toStringAsFixed(1);
  }

  String calculatetext() {
    if (no >= 25) {
      return 'overweight';
    } else if (no >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String calculateinfo() {
    if (no >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    } else if (no >= 18.5) {
      return 'You have normal body weight. Good Job!';
    } else {
      return 'You have lower than normal body weight. You should eat a bit more.';
    }
  }
}
