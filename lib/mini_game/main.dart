///Guess the number

import 'package:week_one_activities/mini_game/number.dart';

void main() {
  var randomNumber = NumberGame(maxNumber: 30);
  randomNumber.random = randomNumber.randomNumber();
  print('(GUESS A NUMBER BETWEEN 1 - 30)');
  print('REMEMBER: You only have 4 guesses.');
  print('WHAT\'S THE NUMBER???');
  randomNumber.takeGuess();

  while (randomNumber.numberOfGuess <= 3) {
    switch (randomNumber.isCorrect()) {
      case true:
        print('CONGRATULATIONS! YOU GOT THE CORRECT NUMBER!');
        randomNumber.numberOfGuess = 4;
        break;
      case false:
        print(randomNumber.showClues());
        randomNumber.takeGuess();
        continue;
    }
  }
}
