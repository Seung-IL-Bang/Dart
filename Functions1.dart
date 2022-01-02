// Sample Function
calcSum(var num1, var num2) {
  var sum = num1 + num2; // 3
  print("[calcSum()] $num1 + $num2 is $sum"); // 4
  return sum; // 5
}

// Shorthand Syntax Function
calcSum_shorthand(var num1, var num2) => num1 + num2;

// Anonymous Function
var myFunc = (var num1, var num2) => num1 + num2;

void main() {
  print("[main()] start"); // 1
  var resNum = calcSum(5, 5); // 2, 6
  print("[main()] result is $resNum"); // 7

  var resNum_shorthand = calcSum_shorthand(5, 5);
  print("[main()] result_shorthand is $resNum_shorthand");

  print("[main()] start_anonymous");
  var resNum_a = myFunc(5, 5);
  print("[main()] result is $resNum_a");
}
