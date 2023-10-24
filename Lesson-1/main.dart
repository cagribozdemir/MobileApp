// syntax => söz dizimi, yazım kuralları

void main() {
  print("Merhaba, Tobeto 1B");
  // Programlama Nedir?
  // Ham verinin işlenerek yazılım ürününe dönüştürülmesi
  // Programming Concepts
  // variables, loops, oop, if-else
  String text = "Merhaba";
  print(text);
  text = "Selam";
  print(text);
  //text = 10;
  var age2 = 10.5; // dynamic değil, verdiğim başlangıç değerinin default türü
  dynamic age; // dynamic => tür değiştirebilen değişken
  age = 18;
  age = "Merhaba";
  // var keywordü ile tanımlı değişkene değer atanmadığında türü dynamic olur

  // koşul-şart blokları

  // belirli bir koşulu sağlama durumunda belirli bir kod bloğunu çalıştırmak
  int userAge = 19;
  // karşılaştırma operatörleri == != > < >= <=
  //! Her if bloğundan sadece bir karar çıkar!
  //! Senkron kodlar yukarıdan aşağıya execute edilir.
  // **** Blok 1 **** //
  if (userAge >= 18) {
    // kullanıcının yaşı 18den büyükse çalışacak kod bloğu
    print("if bloğu");
  }
  // **** Blok 2 **** //
  if (userAge == 18) {
    // kullanıcının yaşı 18e eşitse çalışacak kod bloğu
    print("else if bloğu");
  } else {
    // yukarıdaki bloklardan herhangi birine girilmemişse
    print("else bloğu");
  }

  // Scope Kavramı
  // Kapsam,Alan   { }
  // main method scope
  String text2 = "Merhaba";
  if (userAge >= 18) {
    // scope başlangıç
    text2 = "Merhaba tobeto";
  } // scope bitiş alanı
  print(text2);
}
