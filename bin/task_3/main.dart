import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  int number = int.parse(stdin.readLineSync()!);
  print(isPalindrome(number));
}

bool isPalindrome(num number) {
  int len = number.toString().length;

  while (len > 1) {
    num last = number % 10;
    number ~/= 10;
    len--;

    num first = number ~/ pow(10, len - 1);
    number %= pow(10, len - 1);
    len--;

    if(first != last){
      return false;
    }
  }

  return true;
}
