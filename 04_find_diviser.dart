/*
  🧠 Problem: Find All Divisors of a Number

  1️⃣ Ask the user for a number.
  2️⃣ Print all numbers that divide the given number exactly (i.e., with no remainder).

  🎯 Goal:
  - Practice for-loops and modulo operator.
  - Understand basic number theory logic.
*/

import 'dart:io';

void main(List<String> args) {
  List divisor = [];

  print('Enter a number to find all its divisor');

  String? inputNumber = stdin.readLineSync();
  int userNumber = int.parse(inputNumber!);
  if (userNumber == 0) {
    print(' 0 has  no divisor..');
  } else {
    for (int i = 1; i <= userNumber; i++) {
      if (userNumber % i == 0) {
        divisor.add(i);
      }
    }
    print(' the divisor: $divisor');
  }
}
