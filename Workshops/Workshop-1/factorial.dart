import 'dart:io';

void main() {
  print("Lütfen faktöriyelini hesaplamak istediğiniz sayıyı giriniz:");
  int num = int.parse(stdin.readLineSync()!);
  print("$num faktöriyeli: ${factorial(num)}");
}

int factorial(int num) {
  if (num < 0)
    throw Exception("Negatif bir sayı için faktöriyel hesaplanamaz.");
  if (num == 0 || num == 1) return 1;
  return num * factorial(num - 1);
}
