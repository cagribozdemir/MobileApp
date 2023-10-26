void main() {
  // döngüler
  // methodlar
  // class - oop

  for (int i = 0; i < 5; i++) {
    print("Merhaba");
  }

  print("***** While *******");
  // CTRL + C
  int number = 0;
  while (number < 10) {
    print("Merhaba While");
    number++;
  }
  // number = 10
  int number2 = 0;
  while (true) {
    print("Merhaba while 2");
    number2++;
    if (number2 > 10) break;
  } // break => döngüyü bitirmek

  int number3 = 50;
  while (number3 < 10) {
    print("While 3");
  }
  // do-while => koşul farketmeksizin 1. girişte çalışır sonra koşul kontrol edilir
  // while => koşul kontrol edilir
  do {
    print("Do while");
  } while (number3 < 10);

  List isimler = [
    "Halit",
    "Engin",
    "İrem",
    "Deneme",
  ];
  print(isimler[0]); // [] index
  print(isimler[isimler.length - 1]);
  print(isimler.last);
  print(isimler.first);
  isimler.add("Samet");
  isimler.addAll(["Burak", "Umut"]);

  // 0,1,2,3,4,5,6
  for (int i = 0; i < isimler.length; i++) {
    print("Merhaba " + isimler[i]);
  }
  for (String isim in isimler) {
    print("Merhaba 2 " + isim);
  }

  sayHello("Halit");
  sayHello("Enes");
  sayHello("Engin");
  sayHello("Ahmet");
  sayHello("İrem");

  int toplam1 = topla(1, 5);
  int toplam2 = topla(10, 20);
  print(topla(100, 200));
  print(toplam1);
}

// void => geri dönüş tipi olmayan
// dönüş_tipi metot_ismi() {}
void sayHello(String name) {
  //return; // methodu kes
  print("Hello " + name);
}

int topla(int a, int b) {
  //print(a + b);
  int toplam = a + b;
  return toplam;
  print("Dead Code");
}

// arrow function
// tek satırlık fonksiyonlar
int cikarma(int a, int b) {
  return a - b;
}

// syntax alternatifi
int cikarma2(int a, int b) => a - b;


// class

