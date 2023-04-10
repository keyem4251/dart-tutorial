void main() {
  var name = 'Bob';

  Object name2 = 'Bob';

  String name3 = 'Bob';
  print('$name, $name2, $name3');

  int? lineCount;
  assert(lineCount == null);

  int lineCount2;
  lineCount2 = 0;
  print(lineCount2);

  late String description;

  description = 'Feijoada!';
  print(description);

  final finalName = 'Bob';
  const bar = 1000000;
  const double atm = 1.01325 * bar;
  print(finalName);
  print(atm);
}
