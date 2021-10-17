import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;

  double _bmi=1;

  String CalculateBMI() {
    _bmi = weight / pow(2, height / 100);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Kilolu';
    } else if (_bmi > 21) {
      return 'Normal';
    } else {
      return 'Arıq';
    }
  }


  String getInterpretation(){
    if (_bmi >= 25) {
      return 'Normal insan ağırliğından daha ağırsan .Biraz idman etməlisən';
    } else if (_bmi > 21) {
      return 'Normal insan ağırlığındasan .Belə davam et';
    } else {
      return 'Həddindən artiq çox arığsan . Çox qida qəbul et ';
    }

  }
}
