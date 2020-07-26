
main() {

  try {
    throw FormatException("Bad format!");
  } on FormatException {
    // A specific exception
    print("Caught: specific exception");
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Caught: unknown exception of type Exception: $e');
  } catch (e) {
    // No specified type, handles all
    print('Something really unknown: $e');
  }

  // can specify 2 params in catch -- exception and stack trace
  try {
    throw FormatException("Bad format!");
  } on Exception catch (e) {
    print('Exception details:\n $e');
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }

  try {
    throw FormatException("Bad format!");
  } catch (e) {
    print('Error: $e'); // Handle the exception first.
  } finally {
    print("Execute finally clause"); // Then clean up.
  }
}