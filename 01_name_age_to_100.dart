import 'dart:io';

void main(List<String> args) {



  print('Enter your Name: ');
  String? name = stdin.readLineSync();
  print('Enter your birth year');
  String? yearInput = stdin.readLineSync();
  int birthYear = int.parse(yearInput!);

  int thisYear = DateTime.now().year;


 int currentAge = thisYear - birthYear;

 if(currentAge >= 100){

  print('Congratz you are already 100 year of old..!!!');
 }else{

  int result = 100 - currentAge;

  print('$name... you are $result years to go for 100');
 }

  
  

}