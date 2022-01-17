import 'dart:io';
import 'dart:math';

class Shape{
  void area(int a,[int b,int c]){
    var area;
    var perimeter;
    if(b==null){
      area=a*a;
      perimeter=4*a;
      print('Length : $a');
      print('Area : $area');
      print('Perimeter : $perimeter');
    }
    else if(c==null){
      area=a*b;
      perimeter=2*(a+b);
      print('Length : $a');
      print('Width : $b');
      print('Area : $area');
      print('Perimeter : $perimeter');
    }
    else{
      double s=(a+b+c)/2;
      area=sqrt(s*(s-a)*(s-b)*(s-c));
      perimeter=a+b+c;
      print('Side A : $a');
      print('Side B : $b');
      print('Side C : $c');
      print('Area : $area');
      print('Perimeter : $perimeter');
    }
  }
}
main() {
  while (true) {
    print('Select a shape');
    print('1. Square');
    print('2. Triangle');
    print('3. Rectangle');
    print('4. Exit');
    String? choice = stdin.readLineSync();
    print('User input : $choice');
    int number = int.parse(choice);
    if (number == 4) break;
    Shape obj=Shape();
    int a,int b,int c;
    if(number==1){
      print('Enter length');
      a=int.parse(stdin.readLineSync());
      area(a);
    }
    else if(number==2){
      print('Enter length');
      a=int.parse(stdin.readLineSync());
      print('Enter width');
      b=int.parse(stdin.readLineSync());
      area(a,b);
    }
    else{
      print('Enter first side');
      a=int.parse(stdin.readLineSync());
      print('Enter second side');
      b=int.parse(stdin.readLineSync());
      print('Enter third side');
      c=int.parse(stdin.readLineSync());
      area(a,b,c);
    }
  }
}
