/*
  Ask the user to input two numbers.

  1️⃣ For the first number:
     - Check if it's even or odd.
     - Also check if it's a multiple of 4.

  2️⃣ For the second number:
     - Check if it divides the first number evenly (no remainder).

  🧠 Output:
  - Display messages based on even/odd, multiple of 4, and divisibility result.
*/

import 'dart:io';


void main() {
  stdout.write('Enter the first number: ');
  String? firstInput = stdin.readLineSync();
  int firstNum = int.parse(firstInput!);

  if (firstNum % 2 == 0) {
    print('The number is even.');
    if (firstNum % 4 == 0) {
      print('It is also a multiple of 4.');
    }
  } else {
    print('The number is odd.');
  }

  stdout.write('Enter the second number to check divisibility: ');
  String? secondInput = stdin.readLineSync();
  int secondNum = int.parse(secondInput!);

  if (secondNum == 0) {
    print("Cannot divide by zero.");
  } else if (firstNum % secondNum == 0) {
    print('$firstNum is divisible by $secondNum.');
  } else {
    print('$firstNum is not divisible by $secondNum.');
  }
}
