import 'dart:io';

void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(4, 7);
  print("alan: $sonuc");
  print(hacimHesapla(5, 7, 9));
}

void cevreyiHesapla() {
  print("Eni giriniz.");
  int en = int.parse(stdin.readLineSync()!);
  print("Boyu giriniz.");
  int boy = int.parse(stdin.readLineSync()!);
  int cevre = (en + boy) * 2;
  print("Cevre: $cevre");
}

int alanHesapla(int sayi1, int sayi2) {
  //print("Alan: ${sayi1*sayi2}");böylede yapabilirim return ederek te return le yaptığımda yukarıdaki gibi bir değişkene atama yapmam gerek
  return sayi1 * sayi2; // metodun sonun da bulduğum sonucu ekrana yazdıracaksam return etmemem daha mantıklı eğer yazdırmayıp başka bir şey için kullanacaksam onu return edip bir değişkene atar ve öyle kullanırım.
}

double hacimHesapla(double en, double boy, double yukseklik) {  // return ü değişkene atamadan da kullanabilirim.
  return en * boy * yukseklik;
}
