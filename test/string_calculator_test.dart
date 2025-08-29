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
      expect(calculator.add('   '), 0);
    });
    
    test('Should handled any amount of numbers', (){
      expect(calculator.add('1'), 1);
      expect(calculator.add('1,2'), 3);
      expect(calculator.add('1,2,4'), 7);
      expect(calculator.add('10,20,30'), 60);
      expect(calculator.add('1 , 2 , 3 '), 6);
    });

    test('Should handled new line between numbers',(){
      expect(calculator.add('1\n2'), 3);
      expect(calculator.add('1\n2,7'), 10);
      expect(calculator.add('1\n2\n3\n4\n5'), 15);
    });
  });
}