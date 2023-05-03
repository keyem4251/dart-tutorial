void main() {
  // String → int
  var one = int.parse('1');
  print(one);

  // String → double
  var onePointOne = double.parse('1.1');
  print(onePointOne);

  // int → String
  String oneAsString = 1.toString();
  print(oneAsString);

  // double → String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}

void stringsExample() {
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, which is very handy.');

  assert('That deserves all caps. ${s.toUpperCase()} is very handy!' ==
      'That deserves all caps, STRING INTERPOLATION is very handy');
}

void collectionExample() {
  var list = [1, 2, 3];
  assert(list.length == 3);

  var halogens = {'fluorine', 'chorine'};
  print(halogens);

  var elements = <String>{};
  elements.addAll(halogens);
  assert(elements.length == 2);

  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
  };
  assert(gifts.length == 2);
}
