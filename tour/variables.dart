

main() {

  //'var_name' contains reference to String object
  //'var' means type will be deducted by Dart
  var var_name = 'John';

  // 'dyn_name' is not restricted to a certain type
  dynamic dyn_name = 'Alex';

  // explicit type annotation
  String type_name = 'Maria';

  // Default value for varialbes is null
  int maxAge; // value is null
  assert(maxAge == null);

  // final means can be set only once aka const pointer (char* const)
  final fin_name = 'Nick';
  // will give an error
  //name = 'Anna';

  // const used for compile-time constants
  const maxVelocity = 100;

  // variable to a immutable list
  var con_list = const [];
  con_list = []; // still can change the variable itself

  // non-mutable variable to non-mutable object aka const char* const
  final fin_con_list = const [];

  // for const variable no need to specify const 2 times
  const con_var_list = []; // the same as const []
}