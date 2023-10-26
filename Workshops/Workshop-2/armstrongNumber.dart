import 'dart:io';
import 'dart:math';

void main() {
  print("Armstrong sayı kontrolü için sayı giriniz : ");
  int number = int.parse(stdin.readLineSync()!);
  print("$number : ${isArmstrong(number)}");
}

String isArmstrong(int number) {
  int exponent = number.toString().length;
  int sum = 0;
  int tempNumber = number;

  while (tempNumber > 0) {
    int digit = tempNumber % 10;
    sum += pow(digit, exponent).toInt();
    tempNumber ~/= 10;
  }

  if (sum == number) return "Armstrong sayıdır.";
  return "Armstrong sayı değildir.";
}
