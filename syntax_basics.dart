/// Documentation comment
/**
 * Documentation commment
 */

void main() {
  // Single line comment

  /*
    multi line comments
   */

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

  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5);
  assert(5 ~/ 2 == 2);
  assert(5 % 2 == 1);
  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  prefix_and_postfix_inc_dec();
  equality_and_relational_operators();
}

void prefix_and_postfix_inc_dec() {
  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a after b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a after b gets its value.
  assert(a != b);
}

void equality_and_relational_operators() {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
}

void assign_value() {
  var a = 1;
  a ??= 2;
  var b = null;
  b ??= 2;
  print('$a, $b');
}

void conditional_expressions(isPublic) {
  var visibility = isPublic ? 'public' : 'private';
  print(visibility);

  String playerName(String? name) => name ?? 'Guest';
  print(playerName(null));
}

class Paint {
  String color;
  double strokeCap;
  int srokeWidth;

  Paint(this.color, this.strokeCap, this.srokeWidth) {}
}

void cascade_notation() {
  var paint = Paint('black', 1.0, 1);
  paint
    ..color = 'read'
    ..srokeWidth = 2
    ..strokeCap = 3.5;
}

class Television {
  // Metadata: activateを使おうとすると警告が出る
  @deprecated
  void activate() {

  }
}
