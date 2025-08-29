import 'package:kata_string_calculator/regex_constant.dart';

class StringCalculator {
  int add(String numbers) {
    try {
      //handled the empty string
      if (numbers
          .trim()
          .isEmpty) {
        return 0;
      }
      //check the custom delimiters
      final customDelimiters = _extractDelimiter(numbers);
      final delimiterRegex = customDelimiters.$1;
      final numberString = customDelimiters.$2;
      //split the numbers with regexp and parse
      final numbersList = _parseNumbers(numberString, delimiterRegex);
      //check for negative numbers
      _checkForNegatives(numbersList);
      //sum of numbers
      final sum = numbersList.fold(0, (previousValue, element) => previousValue + element);
      return sum;
    } catch (e) {
      rethrow;
    }
  }


  (RegExp, String) _extractDelimiter(String input) {
    if (!input.startsWith('//')) {
      return (RegexConstant.commaOrNewLineRegex, input);
    }

    final parts = input.split('\n');
    if (parts.length < 2) {
      throw FormatException('Invalid custom delimiter format');
    }

    final customDelimiter = parts[0].substring(2);
    final numberString = parts.sublist(1).join('\n');
    final delimiterRegex = RegExp(RegExp.escape(customDelimiter));
    return (delimiterRegex, numberString);
  }


  List<int> _parseNumbers(String numbers, RegExp delimiterRegex) {
    final numbersList = numbers.split(delimiterRegex).map((element) => int.parse(element.trim())).toList();
    return numbersList;
  }

  void _checkForNegatives(List<int> numbers) {
    final negatives = numbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw FormatException('Negative numbers not allowed: ${negatives.join(',')}');
    }
  }
}