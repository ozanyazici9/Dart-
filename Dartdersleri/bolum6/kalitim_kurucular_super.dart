void main(List<String> args) {
  Asker ozan = Asker("ozan", 23);
  Er ali = Er("ali", 22);  // alt sınıftan nesne üretildiğinde önce üst sınıfın kurucusu çalışır.
  ali.selamla();
  ali.memleketDegistir("Karabük");
  print(ali.memleket);
  
}

class Asker {
  String ad = "Varsayılan";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("Merhaba adım $ad ve yasım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas):super(ad, yas){ // super() anahtar kelimesi üst sınıfın kurucusunu tetikliyor. er sınıfından nesne ürettiğimizde verdiğimiz parametreler üst sınıfın kurucusuna parametre olarak gönderiliyor super() sayesinde. Super tek başına üst sınıfa git demek.
    print("Er sınıfının kurucusu çalıştı");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
  }

  @override
  void selamla() {
    // TODO: implement selamla
    print("Er sınıfından selamlar");
  }
}