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
}
