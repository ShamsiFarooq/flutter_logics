/*
  🧠 Problem: Find Common Elements Between Two Lists

  Given two lists:
    a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

  🎯 Goal:
  1️⃣ Find all elements that appear in both lists.
  2️⃣ Remove any duplicates in the final result.
  3️⃣ Make sure it works even if list sizes are different.

  
*/

void main(List<String> args) {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List c=[];


  for(int i= 0; i< a.length; i++){

    if(b.contains(a[i]) && !c.contains(a[i])){
      c.add(a[i]);
    }
  }

  print("Common elements: $c");
  
}
