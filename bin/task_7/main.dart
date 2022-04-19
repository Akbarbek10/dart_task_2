import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  print("Son kiriting: ");
  int n = int.parse(stdin.readLineSync()!);
  List numbers = [];

  for (int i = 2; i <= n; i++) {
    numbers.add(i);
  }

  num sum = 0;
  numbers.forEach((element) {
    if (isPrimeNum(element)) {
      sum += element;
    }
  });

  print("sum: $sum");
}

bool isPrimeNum(int num) {
  int k = 0;
  for (int i = 1; i <= num / 2; i++) {
    if (num % i == 0) {
      k++;
    }
    if (k > 1) {
      return false;
    }
  }
  return true;
}


