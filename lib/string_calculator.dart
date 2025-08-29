import 'package:kata_string_calculator/regex_constant.dart';

class StringCalculator {
  int add(String numbers) {
    //handled the empty string
    if (numbers.trim().isEmpty) {
      return 0;
    }

    ///handled any amount of number & new line between numbers
    //split the numbers with regexp
    final splitNumbers = numbers.split(RegexConstant.commaOrNewLineRegex);
    //convert to integer
    final numbersList = splitNumbers.map((element) => int.parse(element.trim()));
    //sum of numbers
    final sum = numbersList.fold(0, (previousValue, element) => previousValue + element);
    return sum;
  }
}
