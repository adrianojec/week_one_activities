import 'dart:math';

///1
String rockPaperScissorGame(
    {required String player1, required String player2}) {
  const Map<String, String> conditions = {
    'rockrock': 'Draw!',
    'rockpaper': 'You Win!',
    'rockscissor': 'Computer Win!',
    'paperpaper': 'Draw!',
    'paperscissor': 'You Win!',
    'paperrock': 'Computer Win!',
    'scissorscissor': 'Draw!',
    'scissorrock': 'You Win!',
    'scissorpaper': 'Computer Wins!',
  };
  const Map<int, String> computerChoices = {
    0: 'rock',
    1: 'paper',
    2: 'scissor',
  };
  Random random = Random();
  int computerPick = random.nextInt(3);
  final String player1VsComputer =
      computerChoices[computerPick]! + player1.toLowerCase();
  final String player2VsComputer =
      computerChoices[computerPick]! + player2.toLowerCase();

  return '''
  Game for Player 1
  Computer: ${computerChoices[computerPick]}
  Player 1: ${player1.toLowerCase()}
  Result: ${conditions[player1VsComputer]}\n
  Game for Player 2
  Computer: ${computerChoices[computerPick]}
  Player 1: ${player2.toLowerCase()}
  Result: ${conditions[player2VsComputer]}
   ''';
}

///2
List<int> divisor(int number) {
  List<int> theDivisors = [];
  int index = 2;
  while (index < number) {
    (number % index == 0) ? theDivisors.add(number ~/ index) : null;
    index += 1;
  }
  return theDivisors;
}

///4
void fibonacci(int number) {
  int firstNum = 0;
  int secondNum = 1;
  int thirdNum = 0;
  //int count = 0;

  while (thirdNum < number) {
    print(firstNum);
    thirdNum = firstNum + secondNum;
    firstNum = secondNum;
    secondNum = thirdNum;
    //count += 1;
  }
}

///5
String checkPrime(int number) {
  List<int> factors = <int>[];
  List<int> list = List.generate(number, (index) => index + 2);
  list.map((index) {
    number % index == 0 ? factors.add(index) : '';
  }).toList();

  final result = (factors.length == 1)
      ? '$number is a prime number'
      : '$number is not a prime number';
  return result;
}

///6
String largestNumber([int number1 = 0, int number2 = 0, int number3 = 0]) {
  final List<int> numbers = [];
  numbers.addAll([number1, number2, number3]);
  numbers.sort();
  return '${numbers.last} is the largest number';
}

///7
String palindrome({required String word}) {
  final String reversedWord = word.split('').reversed.join('');
  final result = (word == reversedWord)
      ? '$word is a palindrome'
      : '$word is not a palindrome';
  return result;
}

///8
String noVowel(String word, [int increment = 1]) {
  const List<String> vowels = [
    'a',
    'e',
    'i',
    'o',
    'u',
    'A',
    'E',
    'I',
    'O',
    'U',
  ];
  List<String> noVowelWord = word.split('');
  int increment = 1;
  while (increment < noVowelWord.length) {
    vowels.map((vowel) => noVowelWord.remove(vowel)).toList();
    increment += 1;
  }
  final String newWord = noVowelWord.join();
  return newWord;
}

///9
String camelCase(String word) {
  List<String> toCamelCase = word.split(' ');
  final List<String> newCamelCase = [];
  toCamelCase.map((word) {
    newCamelCase.add(
        word.toUpperCase().substring(0, 1) + word.toLowerCase().substring(1));
  }).toList();
  final result = newCamelCase.join();
  return result;
}

///10
String isNegativeOrPositive(int number) {
  final String result = (number > 0)
      ? '$number is a positive number'
      : (number < 0)
          ? '$number is a positive number'
          : '$number is neither a positive nor a negative number';

  return result;
}

void main() {
  ///1
  print(rockPaperScissorGame(player1: 'rock', player2: 'paper'));
  print('********************************');

  ///2
  print(divisor(26));
  print('********************************');

  ///3
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  final List<int> evenNumber = [];
  var result = a.map((element) {
    element % 2 == 0 ? evenNumber.add(element) : evenNumber;
  }).toList();
  print(evenNumber);
  print('********************************');

  ///4
  fibonacci(15);
  print('********************************');

  ///5
  print(checkPrime(3));
  print('********************************');

  ///6
  print(largestNumber(11, 15, 12));
  print('********************************');

  ///7
  print(palindrome(word: 'racecar'));
  print('********************************');

  ///8
  print(noVowel('consonants'));
  print('********************************');

  ///9
  print(camelCase('my name is jek'));
  print('********************************');

  ///10
  print(isNegativeOrPositive(0));
  print('********************************');
}
