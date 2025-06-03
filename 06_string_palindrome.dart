/*
  🧠 Twisted Problem: Advanced Palindrome Checker

  1️⃣ Ask the user for a sentence (could include spaces, punctuation, mixed case).
  2️⃣ Normalize it by removing all non-alphanumeric characters and lowercasing.
  3️⃣ Check if the cleaned string is a palindrome using a two-pointer approach.
  4️⃣ Additionally, print the reversed cleaned string.
  5️⃣ Bonus: If it’s not a palindrome, show the first index where the mismatch occurs.

  🎯 Goal:
  - String cleaning (regex or manual filtering)
  - Two-pointer logic
  - Index tracking on mismatch
  - Practice edge cases (empty string, single char, only punctuation)
*/



import 'dart:io';

void main() {
  stdout.write('Enter a string to check if it\'s a palindrome: ');
  String? userInput = stdin.readLineSync();

  if (userInput == null || userInput.trim().isEmpty) {
    print('⚠️ Please enter a valid non-empty string.');
    return;
  }

  String cleaned = userInput.replaceAll(RegExp(r'[^A-Za-z0-9]'), '').toLowerCase();

  String reversed = cleaned.split('').reversed.join();

  print(' Cleaned input: $cleaned');
  print(' Reversed input: $reversed');

  int left = 0;
  int right = cleaned.length - 1;
  bool isPalindrome = true;

  while (left < right) {
    if (cleaned[left] != cleaned[right]) {
      print('❌ Not a palindrome. Mismatch at index $left and $right: '
          '${cleaned[left]} != ${cleaned[right]}');
      isPalindrome = false;
      break;
    }
    left++;
    right--;
  }

  if (isPalindrome) {
    print('The input is a palindrome!');
  }
}
