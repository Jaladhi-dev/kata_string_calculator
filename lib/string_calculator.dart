import 'package:kata_string_calculator/regex_constant.dart';

class StringCalculator {
  int add(String numbers) {
    //handled the empty string
    if (numbers.trim().isEmpty) {
      return 0;
    }
    RegExp delimiterRegexp = RegexConstant.commaOrNewLineRegex;

    //check custom delimiters
    if (numbers.startsWith('//')) {
      final split = numbers.split('\n');
      //check the delimiter format
      if (split.length < 2) {
        throw FormatException('Invalid custom delimiter');
      }
      final dynamicDelimiter = split[0].substring(2);
      delimiterRegexp = RegExp(RegExp.escape(dynamicDelimiter));
      numbers = split.sublist(1).join('\n');

      //throw exception for duplicate values
      if (numbers.contains('\n') || numbers.contains(',')) {
        throw FormatException('Invalid input: mixed delimiters used with custom delimiter');
      }
    }
    //split the numbers with regexp
    final splitNumbers = numbers.split(delimiterRegexp);
    //convert to integer
    final numbersList = splitNumbers.map((element) => int.parse(element.trim()));
    //sum of numbers
    final sum = numbersList.fold(0, (previousValue, element) => previousValue + element);
    return sum;
  }
}
