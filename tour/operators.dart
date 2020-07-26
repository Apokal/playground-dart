

main() {

  /****** Arithmetic operators ******/

  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
  
  // Arithmetic pre- and sufix operators

  var a, b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0

  /****** Equality and relational operators ******/

  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  /****** Type test operators ******/
  
  // 'as' used to type cast (aka dynamic_cast<>)
  //Ex: (emp as Person).firstName = 'Bob';

  // 'is' and 'is!' check if an object is of a type
  //Ex: if (emp is Person) { emp.firstName = 'Bob'; }

  /****** Assignemnt operators ******/

  // Assign value to a
  // a = value;
  // Assign value to b if b is null; otherwise, b stays the same
  // b ??= value;

  /****** Logical operators ******/

  // !expr	inverts the following expression (changes false to true, and vice versa)
  var var_a = true;
  var_a = !var_a; // false
  
  // ||	logical OR
  var_a = var_a || true; // true

  // &&	logical AND
  var_a = var_a && false; // false

  /****** Bitwise and shift operators ******/
  final value = 0x22;
  final bitmask = 0x0f;

  assert((value & bitmask) == 0x02); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR
  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); // Shift right

  /****** Conditional operators ******/
  // condition ? expr1 : expr2
  // If condition is true, evaluates expr1 (and returns its value); 
  // otherwise, evaluates and returns the value of expr2.
  var isPublic = false;
  var visibility = isPublic ? 'public' : 'private';

  // expr1 ?? expr2 
  // If expr1 is non-null, returns its value; 
  // otherwise, evaluates and returns the value of expr2.
  var non_null_var = visibility ?? "default";

  // Cascade notation
  // Cascades (..) allow you to make a sequence of operations on the same object
  // Example #1: 
  /*
    querySelector('#confirm') // Get an object.
    ..text = 'Confirm' // Use its members.
    ..classes.add('important')
    ..onClick.listen((e) => window.alert('Confirmed!'));
  */
  // Example #2 is the same as #1:
  /*
    var button = querySelector('#confirm');
    button.text = 'Confirm';
    button.classes.add('important');
    button.onClick.listen((e) => window.alert('Confirmed!'));
  */


}