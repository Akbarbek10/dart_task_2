import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  int N = int.parse(stdin.readLineSync()!); //number of people
  int K = int.parse(stdin.readLineSync()!); //number of fruits

  if(K>0){
    if (K % N == 0) {
      print("Yes");
    }else{
      print("No");
    }
  }else{
    print("No");
  }


}
