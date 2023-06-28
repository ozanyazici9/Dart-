//Nesneye yönelimli programlamaya giriş

/**
 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
 * Istediğimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 * 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.  
 */

void main(List<String> args) {
  int sayi = 5;
  int sayi2 = 10;
  Ogrenci emre = Ogrenci();
  emre.ogrAd = "emre taşdemir";
  emre.ogrNo = 777;
  emre.aktifMi = true;
  Ogrenci hasan = Ogrenci(); // her nesne ürettiğimde hafızada bir alan ayrılır ve o alan da o nesne nin değişkenleri, metotları vs. bulunur
  Ogrenci ayse = Ogrenci();

  var kemal = Ogrenci(); // nesne üretmenin farklı bir yolu.
}

class Ogrenci {
  //instance variables
  int ogrNo = 1;
  String? ogrAd;
  bool? aktifMi = true;

  void dersCalis() {
    print("Öğrenci ders calısıyor");
  }
}
