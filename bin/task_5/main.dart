import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Summani kiriting: ");
  int givenSum = int.parse(stdin.readLineSync()!);
  stdout.write("Elementlar sonini kiriting: ");
  int n = int.parse(stdin.readLineSync()!);
  List numbers = List.filled(n, null, growable: false);
  print("$n - ta element kiriting: ");

  //filling elements of the numbers array with numbers
  for (int i = 0; i < n; i++) {
    int element = int.parse(stdin.readLineSync()!);
    numbers[i] = element;
  }

  num closestMaxSum = numbers[0];

  //defining if there is a single element that can be equal to given sum
  for (int i = 0; i < n; i++) {
    num tempNum = numbers[i];
    if (tempNum > closestMaxSum && tempNum <= givenSum) {
      closestMaxSum = tempNum;
    }
  }

  if (closestMaxSum > givenSum) {
    print("No such number that can be lower than $givenSum");
  } else {
    //calculating the closest sum of the elements to the given sum
    for (int k = 0; k < n; k++) {
      for (int i = 0; i < n; i++) {
        num sum = numbers[i];

        for (int j = 0; j <= k; j++) {
          if(i!=j){
            sum+=numbers[j];
          }
        }

        if (sum > closestMaxSum && sum <= givenSum) {
          closestMaxSum = sum;
        }
      }
    }

    print("The closest sum of the elements: $closestMaxSum");
  }
}
