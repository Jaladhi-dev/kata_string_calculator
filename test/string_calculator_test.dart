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
    
    test('Should handled any amount of numbers', (){
      expect(calculator.add('1'), 1);
      expect(calculator.add('1,2'), 3);
      expect(calculator.add('1,2,4'), 7);
      expect(calculator.add('10,20,30'), 60);
    });
  });
}