import 'dart:math';
import 'dart:io';

class NumberGame {
  final int _maxNumber;
  int guess = 0;
  int random = 0;
  int numberOfGuess = 0;

  NumberGame({
    required int maxNumber,
  }) : _maxNumber = maxNumber;

  int randomNumber() {
    Random random = Random();
    int randomNumber = random.nextInt(_maxNumber + 1) + 1;
    return randomNumber;
  }

  List<int> generateIndex() {
    List<int> list = List.generate(random - 1, (index) => index + 2);
    return list;
  }

  List<int> divisibleBy() {
    List<int> theDivisors = <int>[];
    generateIndex().map((index) {
      random % index == 0 ? theDivisors.add(random ~/ index) : null;
    }).toList();
    return theDivisors;
  }

  List<int> divisors() {
    List<int> factors = <int>[];
    generateIndex().map((index) {
      random % index == 0 ? factors.add(index) : null;
    }).toList();
    return factors;
  }

  String firstClue() {
    String message = (divisibleBy().isEmpty)
        ? 'WRONG! CLUE: Number is only divisible by itself.\n'
        : 'WRONG! CLUE: Number is divisible by ${divisibleBy()[(divisibleBy().length - 1) ~/ 2]}.\n';
    return message;
  }

  String secondClue() {
    final result = (divisors().length == 1)
        ? 'WRONG! CLUE: Number is a prime number.\n'
        : 'WRONG! CLUE: Number has ${divisors().length - 1} possible divisor\\s.\n';
    return result;
  }

  String thirdClue() {
    return guess > random
        ? 'WRONG! CLUE: Number is less than your guess.\n'
        : 'WRONG! CLUE: Number is greater than your guess.\n';
  }

  bool isCorrect() {
    return guess == random ? true : false;
  }

  String showClues() {
    numberOfGuess += 1;
    switch (numberOfGuess) {
      case 1:
        return firstClue();
      case 2:
        return secondClue();
      case 3:
        return thirdClue();
    }
    return 'YOU LOSE :(';
  }

  void takeGuess() {
    if (numberOfGuess != 4) {
      print('GUESS: ');
      guess = int.parse(stdin.readLineSync()!);
    }
  }
}
