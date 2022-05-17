import 'package:week_one_activities/activities/day4_activity.dart';
import 'package:week_one_activities/activities/day4_activity3.dart';
import 'package:week_one_activities/activities/main2.dart';

void main() {
  final charmanderSize = {
    'Height': 2.04,
    'Weight': 15.2,
  };

  var pokemonOne = Pokemon(
    name: 'Charmander',
    type: 'Lizard',
    element: ['Fire', 'None'],
    size: charmanderSize,
    sound: 'char! charmander!',
    ability: 'Blaze',
  );

  final ninetalesSize = {
    'Height': 3.07,
    'Weight': 43.9,
  };

  var pokemonTwo = Pokemon(
    name: 'Ninetales',
    type: 'Fox',
    element: ['Fire', 'None'],
    size: ninetalesSize,
    sound: 'huwaaaaaiii',
    ability: 'Flash Fire',
  );

  final bulbasaurSize = {
    'Height': 3.07,
    'Weight': 43.9,
  };

  var pokemonThree = Pokemon(
    name: 'Bulbasaur',
    type: 'Seed',
    element: ['Grass', 'Poison'],
    size: bulbasaurSize,
    sound: 'bulbasaur!',
    ability: 'Flash Fire',
  );

  final gloomSize = {
    'Height': 2.07,
    'Weight': 19.0,
  };

  var pokemonFour = Pokemon(
    name: 'Gloom',
    type: 'Weed',
    element: ['Grass', 'Poison'],
    size: gloomSize,
    sound: 'None',
    ability: 'Chlorophyll',
  );

  List<dynamic> allPokemons = [
    pokemonOne,
    pokemonTwo,
    pokemonThree,
    pokemonFour,
  ];
  allPokemons
      .map((pokemon) =>
          print('$pokemon\n${pokemon.cry()}\n${pokemon.attack()}\n'))
      .toList();

  print('******************************');

  BookTest();

  var saver1 = SavingsAccount(savingsBalance: 2000.00);
  var saver2 = SavingsAccount(savingsBalance: 3000.00);

  print('******************************');
  SavingsAccount.modifyInterestRate(0.04);
  saver1.calculateMonthlyInterest();
  saver2.calculateMonthlyInterest();
  print(saver1);
  print(saver2);
  print('******************************');

  SavingsAccount.modifyInterestRate(0.05);
  saver1.calculateMonthlyInterest();
  saver2.calculateMonthlyInterest();
  print(saver1);
  print(saver2);
}
