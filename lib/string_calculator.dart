class StringCalculator {
  int add(String numbers) {
    //handled the empty string
    if (numbers.trim().isEmpty) {
      return 0;
    }

    //handled any amount of number
    final splitNumbers = numbers.split(',');
    final numberList = splitNumbers.map((element) => int.parse(element.trim()));
    final sum = numberList.fold(0, (previousValue, element) => previousValue + element);
    return sum;
  }
}
