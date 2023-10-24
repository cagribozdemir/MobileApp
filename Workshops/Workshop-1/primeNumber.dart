import 'dart:io';
import 'dart:math';

void main() {
  print("Lütfen bir sayı giriniz:");
  int N = int.parse(stdin.readLineSync()!);
  print("$N kadar olan asal sayılar: ${calculatePrimeNumber(N)}");
}

List<int> calculatePrimeNumber(int N) {
  List<int> primeNumbers = [];
  for (int i = 2; i <= N; i++) {
    if (isPrime(i)) {
      primeNumbers.add(i);
    }
  }
  return primeNumbers;
}

bool isPrime(int num) {
  if (num < 2) return false;
  int sqrtNum = sqrt(num).toInt();
  for (int i = 2; i <= sqrtNum; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
