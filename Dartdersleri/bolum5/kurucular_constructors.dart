void main(List<String> args) {
  Araba honda = Araba(2009, "Honda", true);
  // honda.marka="Honda";
  // honda.modelYili = 2009;
  // honda.otomatikMi = true;
  honda.bilgileriSoyle(); // bu fonksiyonu çağırdığımda önce sınıfın kurucu metot u çalışır.
  honda.modelYili = 2020;
  honda.bilgileriSoyle();
  honda.yasHesapla();

  print("////////////////////////////////////////////");

  var reno = Araba(2020, "Renault", true);
  reno.bilgileriSoyle();
  reno.yasHesapla();
  print("////////////////////////////////////////////");

  var mercedesBenz = Araba(2020, "Mercedes Benz", true); 
  mercedesBenz.bilgileriSoyle();
  mercedesBenz.yasHesapla();

  print("////////////////////////////////////////////");

  var ford = Araba.markasizKurucuMetot(2020, true); // marka olmadan yapmak isitiyorum bunun için aşağıda isimlendirilmiş bir kurucu metot oluşturacağım
  ford.bilgileriSoyle();

  print("////////////////////////////////////////////");

  var astonMartin = Araba.modelYiliOlmayanKurucuMetot("Aston Martin", true);
  astonMartin.bilgileriSoyle();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  Araba(this.modelYili, this.marka, this.otomatikMi) { // kurucu metot 
    print("Kurucu metot tetiklendi"); 
    // this.modelYili = modelYili; // bunun yerine kurucu metot un parametresinde this i kullanarak yazımı kısaltabilirim.
    // this.marka = marka;
    // this.otomatikMi = otomatikMi;
  }

  Araba.markasizKurucuMetot(this.modelYili, this.otomatikMi); // Bunlar isimlendirilmiş kurucu metotlar. Asıl kurucu metot ile birlikte kullanılabilir. 
  Araba.modelYiliOlmayanKurucuMetot(String marka, bool otomatikMi){

  this.marka = marka;
  this.otomatikMi = otomatikMi;
  }

  void bilgileriSoyle() {
    print("Arabanin model yili ${modelYili}, markası : ${marka}, otomatik mi : ${otomatikMi}");
  }

  void yasHesapla() {
    print("Arabanın yaşı ${2021 - modelYili!}"); // ünlem, null olabilecek şeylerin null değilmiş gibi davranmasını sağlıyor
  }
}