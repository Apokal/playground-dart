import 'dart:svg';

/*********** IMPORTANT ***********/

// Functions are objects of type Function!!!

// Function example
bool isCool(String name) {
  return name.length >= 3;
}

// Omitting type annotations is possuble
isAwesome(name) {
  return name.length >= 5;
}

// shorthand syntax for one liners
// after => only expressions or conditional statements are allowed
bool isCool_OneLiner(String name) => name.length >= 3;
isAwesome_OneLiner(name) => name.length >= 5;

// Optional parameters (named and positional)

// Named optional parameters
/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool bold, bool hidden}) {}
// Calling: enableFlags(bold: true, hidden: false);

// Positional optional parameters
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// Calling: assert(say('Bob', 'Howdy') == 'Bob says Howdy');
// Calling: assert(say('Bob', 'Howdy', 'smoke signal') ==
//    'Bob says Howdy with a smoke signal');

// Default parameter values
/// Sets the [bold] and [hidden] flags ...
void compareBools({bool first = false, bool second = false}) {}

// first will be true; second will be false.
// compareBools(first: true);

// Anonymous functions
// var list = ['apples', 'bananas', 'oranges'];
// list.forEach((item) {
//   print('${list.indexOf(item)}: $item');
// });
// list.forEach((item) => print('${list.indexOf(item)}: $item');

// Lexical closures
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void test_makeAdder() {
   // Create a function that adds 2.
  var add2 = makeAdder(2);
  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}




void main() {

}