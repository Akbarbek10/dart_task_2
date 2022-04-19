import 'dart:math';

class Uchburchak {
  int a = 0;
  int b = 0;
  int c = 0;
  bool _isExists = false;

  Uchburchak(int a, int b, int c) {
    if (a + b > c && b + c > a && a + c > b){
      this.a = a;
      this.b = b;
      this.c = c;
      _isExists = true;
      print("Uchburchak hosil bo’ladi.");
    }else{
      print("Uchburchak hosil bo’lmaydi.");
    }
  }

   int calculatePerimeter(){
    if(_isExists){
      int P = a+b+c;
      print("P: $P");
      return P;
    }else{
      print("Bunday uchburchak mavjud emas.");
    }
    return -1;
  }

  void calculateArea(){
    if(_isExists){
      num p = calculatePerimeter() / 2;
      num S = sqrt(p * (p - a) * (p - b) * (p - c));
      print("S: $S");
    }else{
      print("Bunday uchburchak mavjud emas.");
    }
  }


}