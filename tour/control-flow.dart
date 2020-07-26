

main() {

  /******** IF and ELSE ********/
  // Can use only boolean values
  if ( 2 == 2) {
    print("Correct!");
  } else {
    print("It's matrix!");
  }
  
  /******** FOR LOOPS ********/

  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  
  // also with closures, they capture VALUE of the index

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

  // for-in form of iteration
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }

  // While and do-while
  
  var cond1 = 0;
  while (cond1 != 5) {
    print("Loop: $cond1");
    cond1++;
  }
  
  var cond2 = 0;
  do {
    print("Loop: $cond2");
    cond2++;
  } while (cond2 != 5);

  // Break and continue
  // Use break to stop looping:

  // while (true) {
  //   if (shutDownRequested()) break;
  //   processIncomingRequests();
  // }

  //Use continue to skip to the next loop iteration:

  // for (int i = 0; i < candidates.length; i++) {
  //   var candidate = candidates[i];
  //   if (candidate.yearsExperience < 5) {
  //     continue;
  //   }
  //   candidate.interview();
  // }
  
  // Switch and case

  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
    case 'PENDING':
      print("CLOSED OR PENDING");
      break;
    case 'APPROVED':
    case 'OPEN':
      print("APPROVED OR OPEN");
      break;
    case 'DENIED':
     continue unknownCase; // continue to label
    
    unknownCase:
    default:
      print("default");
  }

}