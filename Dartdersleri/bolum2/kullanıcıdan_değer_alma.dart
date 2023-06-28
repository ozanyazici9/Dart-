import 'dart:io';

void main(List<String> args) {
  print("adınızı giriniz");
  String? isim = stdin.readLineSync(); // soru işareti ekledim çünkü kullanıcı hiçbir şey yazmayabilir null safety hatası vermesin diye.
  print("girilen isim $isim");

  print("yaşınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!); // burada ! kullanmamın sebebi kullanıcı null girebilir editör uyarıyor bizde null olmayacak sakin ol diyoruz.
  print("girilen yas $yas");

  print("Birinci notu giriniz");
  int not1 = int.parse(stdin.readLineSync()!);
  print("İkinci notu giriniz");
  int not2 = int.parse(stdin.readLineSync()!);
  print("Öğrencinin not ortalaması ${(not1 + not2)/2}");

  print("ürünün fiyatını giriniz");
  int fiyat = int.parse(stdin.readLineSync()!);
  print("Ürünün KDV li fiyatı ${fiyat + (fiyat*18)/100}");
}
