import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

//TODO : Régler le probleme avec la virgule

//TODO : Régler le probleme d'overflow quand le reslutat est tres grand

class CalculatorProvider extends ChangeNotifier {
  String calcul = '0';
  String resultat = '0';
  String sign = '';
  Parser p = Parser();
  void add(String char, Color color) {
    if (color == darkGrey && calcul.length <= 10) {
      calcul = (calcul == '0' && double.tryParse('$calcul$char')! > 1)
          ? char
          : calcul + char;
    }

    if (color == yellow && sign.trim().isEmpty && char != '=') {
      resultat = calcul;
      calcul = '';
      sign = char == '×'
          ? '*'
          : char == '÷'
              ? '/'
              : char;
    }
    if (char == '=') {
      ContextModel cm = ContextModel();
      Expression exp = p.parse('$resultat$sign$calcul');
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      calcul = eval.toString();
      resultat = '';
      sign = '';
    }

    if (char == 'C') {
      calcul = '0';
      resultat = '';
      sign = '';
    }

    if (char == '-/+') {
      calcul = (double.tryParse(calcul)! * (-1)).toString();
    }

    if (char == '%') {
      calcul = (double.tryParse(calcul)! * (1 / 100)).toString();
    }

    notifyListeners();
  }
}
