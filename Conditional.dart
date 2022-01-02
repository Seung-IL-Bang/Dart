void main() {
  // Conditional Statements (if, else if, else)
  var num1 = 1;
  var num2 = 2;

  if (num1 > num2) {
    print("num1 is greater than num2");
  } else if (num1 == num2) {
    print("num1 equal to num2");
  } else {
    print("num1 is less than num2");
  }

  // Conditional Statements (switch, case, break, default)
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print("CLOSED");
      break;
    case 'PENDING':
      print("PENDING");
      break;
    case 'APPROVED':
      print("APPROVED");
      break;
    case 'DENIED':
      print("DENIED");
      break;
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("default");
  }

  var command2 = 'close';
  switch (command2) {
    case 'close':
    case 'CLOSE':
      print("CLOSE");
      break;
    case 'open':
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("default");
  }

/*
  var command3 = 'close';
  switch (command3) {
    case 'close': // Error
      print("Use uppercase.");
    case 'CLOSE':
      print("CLOSE");
      break;
    case 'open': // Error
      print("Use uppercase.");
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("default");
  }
  */

  // Assert Statement for Debugging
  var bool1 = true;
  var bool2 = true;

  assert(bool1 == bool2); // dubug 모드에서만 작동, ()안 false 프로그램 중지.
  //assert(bool1 != bool2);
  print("Completed!");
}
