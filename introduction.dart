import 'dart:math';

void main() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.4;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }

  print(name);
  print(antennaDiameter);
  print(image);

  print(fibonacci(20));

  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  print(max(2, 3));

  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  final yourPlanet = Planet.mercury;

  if (!yourPlanet.isGiant) {
    print('Your planet is not a "giant planet".');
  }
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

enum PlanetType { terrestrial, gas, ice }

// Enum that enumerates the different planets in our solar system
// and some of their properties.
enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  // ...
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  // A constant generating constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  // All instance variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  // Enhanced enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

mixin Piloted {
  int astranauts = 1;

  void describeCrew() {
    print('Number of astranauts: $astranauts');
  }
}

class PiloatedCraft extends Spacecraft with Piloted {
  PiloatedCraft(super.name, DateTime super.launchDate);
}
