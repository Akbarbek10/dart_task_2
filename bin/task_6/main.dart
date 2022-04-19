import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  int n = 5;
  print("5 - ta musbat son kiriting: ");
  List numbers = List.filled(n, null, growable: false);

  //filling elements of the numbers array with numbers
  for (int i = 0; i < n; i++) {
    int element = int.parse(stdin.readLineSync()!);
    numbers[i] = element;
  }

  num max = numbers[0];
  num min = numbers[0];
  num sum = 0;

  for (int i = 0; i < n; i++) {
    num tempNum = numbers[i];
    if (tempNum > max) {
      max = tempNum;
    } else if (tempNum < min) {
      min = tempNum;
    }

    sum += tempNum;
  }

  num maxSum = sum - min;
  num minSum = sum - max;

  print("min sum: $minSum");
  print("max sum: $maxSum");
}
