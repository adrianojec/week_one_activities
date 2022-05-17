import 'dart:math';

void main() {
  ///1.
  const Map<String, dynamic> myFavoriteQuote = {
    'Qoute': '"And I am Iron Man"',
    'Movie': 'Avengers: Endgame',
    'Character': 'Iron Man',
    'Year': 2019,
  };
  print('"My Favorite Qoute from a Movie"');
  myFavoriteQuote.forEach((key, value) {
    print('$key: $value');
  });
  print('********************************************');

  ///2
  const Map<String, dynamic> myFavoritePokemon = {
    'Name': 'Squirtle',
    'Type': 'Water',
    'Catch_rate': 11.9,
    'Height': 0.5,
    'Weight': 9.0,
    'Leveling_rate': 'Medium Slow',
    'Pokedex_color': 'Blue',
    'Friendship': 70,
  };
  print('"My Favorite Pokemon"');
  myFavoritePokemon.forEach((key, value) {
    print('$key: $value');
  });
  print('********************************************');

  ///3
  print('''
    JJJ        kk     
    JJJ   eee  kk  kk 
    JJJ ee   e kkkkk  
JJ  JJJ eeeee  kk kk  
 JJJJJ   eeeee kk  kk  
  ''');
  print('********************************************');

  ///4
  print('''
      000
    OOOOOOO
   +8888888+
  [|-D---D-|]
   |   -   | 
   | +___+ |
    +-----+ 
   ''');
  print('********************************************');

  ///5
  const myAge = 26;
  int dogs = 1;
  dogs += 1;
  print('I have $dogs dogs');
  print('********************************************');

  ///6 Sphere Calculator
  print('Sphere Calculator');
  double sphereRadius = 4;
  const pi = 3.1415926535898;
  final Map<String, double> sphereCalculator = {
    'Sphere Diameter' : 2 * sphereRadius,
    'Sphere Circumference' : 2 * pi * sphereRadius,
    'Surface Area' : 4 * pi * (sphereRadius * sphereRadius),
    'Sphere Volume' : 1.333 * pi * (sphereRadius * sphereRadius * sphereRadius),
  };
  sphereCalculator.forEach((key, value) {
    print('$key: $value');
  });
  // double sphereDiameter = 2 * sphereRadius;
  // double sphereCircumference = 2 * pi * sphereRadius;
  // double surfaceArea = 4 * pi * (sphereRadius * sphereRadius);
  // double sphereVolume =
  //     1.333 * pi * (sphereRadius * sphereRadius * sphereRadius);
  //
  // print('Radius: $sphereRadius');
  // print('Diameter: ${sphereDiameter.toStringAsFixed(2)}');
  // print('Circumference: ${sphereCircumference.toStringAsFixed(2)}');
  // print('Surface Area: ${surfaceArea.toStringAsFixed(2)}');
  // print('Volume: ${sphereVolume.toStringAsFixed(2)}');
  print('********************************************');

  ///7 Minutes Converter
  int minutes = 1600;
  int hours = minutes ~/ 60;
  int extraMinutes = minutes % 60;
  int days = hours ~/ 24;
  int extraHour = hours % 24;
  print('Minutes Converter');
  print('Hour: $hours hrs and $extraMinutes mins');
  print('Day: $days day/s and $extraHour hour/s');
  print('********************************************');

  ///8 Average Rating
  const double rating1 = 3;
  const double rating2 = 6;
  const double rating3 = 3;
  const double averageRating = (rating1 + rating2 + rating3) / 3;
  print('Average Rating: $averageRating');
  print('********************************************');

  ///9 Quadratic Equations
  double a = 2.0;
  double b = 3.0;
  double c = 1.0;
  double root1 = (-b + sqrt((b * b) - 4 * a * c)) / (2 * a);
  double root2 = (-b - sqrt((b * b) - 4 * a * c)) / (2 * a);
  print(root1);
  print(root2);
  print('********************************************');

  ///10 Teacher's Grading
  double attendance = 90;
  double homework = 80;
  double exam = 94;

  double gradeInAttendance = 0.20 * attendance;
  double gradeInHomework = 0.30 * homework;
  double gradeInExam = 0.50 * exam;
  final double totalGrade = gradeInAttendance + gradeInHomework + gradeInExam;

  print('Total Grade: ${totalGrade.floor()}%');
  print('********************************************');

  ///11 the const
  String name = 'Ray';
  name += 'Wenderlich';
  print(name);
  print('The error was the declaration of variables');
  print('********************************************');

  ///12
  const value = 10 / 2;
  print(value.runtimeType);
  print('********************************************');

  ///13
  //By using the toString function
  int randoms = 123;
  print(randoms.toString());
  print(randoms.toString().runtimeType);
  print('********************************************');

  ///14
  String firstWord = 'world';
  String secondWord = 'word';
  print('$firstWord => ${firstWord.split('').reversed.join('')}');
  print('$secondWord => ${secondWord.split('').reversed.join('')}');
  print('********************************************');

  ///15
  double hoursOfCycling = 11.8;
  double liters = 0.5 * hoursOfCycling;
  print('Time: $hoursOfCycling -----> Liters: ${liters.floor()}');
}
