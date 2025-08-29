import 'package:flutter_test/flutter_test.dart';
import 'package:kata_string_calculator/string_calculator.dart';

void main(){
  group('StringCalculator',(){
    late StringCalculator calculator;
    setUp((){
      calculator = StringCalculator();
    });

    test('Should return 0 for empty string',(){
      expect(calculator.add(''), 0);
    });
  });
}