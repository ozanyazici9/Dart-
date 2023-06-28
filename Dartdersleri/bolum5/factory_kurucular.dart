void main(List<String> args) {
  Ogrenci ozan = Ogrenci(5, "ozan");
  var ayse = Ogrenci.idSiz("ayse");
  Ogrenci veli = Ogrenci.factoryKurucusu(-9, "veli");
  print(veli.id);
  print(veli.isim);
}

class Ogrenci{
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayilan kurucu calisti");
  }

  Ogrenci.idSiz(this.isim) {
    print("İsimlendirilmiş kurucu calisti");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) { // factory kurucu sayesinde üretilen nesnenin özellikleri kontrol edilebilir ve ayarlanabilir ve return ifadesi kullanılabilir.
    if (id < 0) {
      return Ogrenci(5, isim); // veli nesnesinin id'si 0' dan küçük ise id yi 5 olarak ayarlayıp isim i old. gibi bırakıyorum.
    } else
      return Ogrenci(id, isim); // id sıfırdan küçük değilse old. gibi kullanıyorum.
  }

  
}