/*
  🧠 Problem: Filter List by User Input

  Given a predefined list:
    a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

  1️⃣ Ask the user for a number.
  2️⃣ Print all elements in the list that are less than the given number.
  3️⃣ Store these elements in a new list and display that list too.
  4️⃣ (Optional) Show how many elements matched.

  🎯 Goal: Practice list filtering, input handling, and dynamic logic.
*/

import 'dart:io';

void main(List<String> args) {


  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List lessNumbers = [];

  stdout.write('Enter a number to find less than from list [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]');

  String? userInput = stdin.readLineSync();

  int inputNum = int.parse(userInput!);



  for(int i = 0; i < a.length; i++){
    if (a[i] < inputNum){
      lessNumbers.add(a[i]);
    }
  }

  if (lessNumbers.isNotEmpty) {
  print('\nNumbers less than $inputNum:');
  print('-----------------------------');

  for (var num in lessNumbers) {
    print(num); // Each number in new line
  }

  print('Total matched: ${lessNumbers.length}');
} else {
  print('No numbers in the list are less than $inputNum.');
}




  
}