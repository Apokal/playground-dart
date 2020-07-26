

void main() {

  /************* NUMBERS *************/

  // int no larger than 64 bits, depending on the platform
  int int_var = 100;
  
  // 64-bit (double-precision) floating-point number
  double dbl_var = 1.1;

  //NOTE: both int and double are subtypes of num class

  // more examples of int and double
  var hex_var = 0xDEADBEEF; // int
  var exponents = 1.42e5; // double
  
  // int is converted automatically to double
  double conv_var = 1;

  /************* STRINGS *************/
  
  //NOTE: Strings are in UTF-16 encoding

  var s1 = 'Single quote';
  var s2 = "Double quotes";
  var s3 = 'It\'s easy to escape';
  var s4 = "It's even easier to use the other delimiter.";

  //Put the value of an expression inside a string by using ${expression}
  var word = "world";
  var text1 = "Hello $word!";
  var text2 = "Hello ${word.toUpperCase()}";

  // Concatenation
  var s5 = 'Hello''world''!';
  var s6 = 'Hello' + 'world' + '!';
  var s7 = """
  Hello
  world
  !
  """;

  // raw string
  var s8 = r'In a raw string, not even \n gets special treatment.';

  /************* BOOLEAN *************/
  var true_var = true;
  var false_var = false;

  /************* LISTS *************/
  // all lists are instances of List class

  var list = [1, 2, 3]; // deduced to List<int>
  assert(list.length == 3);
  assert(list[1] == 2);

  // insert one list into another with operator ...
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  // or if list1 might be null
  var list3 = [0, ...?list1];
 
  // build list with 'collection if' operator
  var promoActive = true;
  var nav = [
    'Home',
    'Furniture',
    'Plants',
    if (promoActive) 'Outlet'
  ];

  // build list with 'collection for' operator
  var listOfInts = [1, 2, 3];
  var listOfStrings = [
    '#0',
    for (var i in listOfInts) '#$i'
  ];
  assert(listOfStrings[1] == '#1');

  /************* SETS *************/
  // all sets are instances of Set type

  var letters = {'a', 'b', 'c', 'd' }; // deduced to  Set<String>
  var not_a_set = {}; //NOTE: will create an object of Map<dynamic, dynamic>

  /************* MAPS *************/
  // all sets are instances of Map type

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var more_gifts = Map();
  more_gifts['first'] = 'partridge';
  more_gifts['second'] = 'turtledoves';
  more_gifts['fifth'] = 'golden rings';
}