void main(List<String> args) {
  Kisi ozan =Kisi("ozan", 23);
  ozan.kendiniTanit();

  Calisan ali = Calisan("ali", 22, 14500);
  ali.kendiniTanit();
  print(ali.maas);
}

class Kisi {
  String isim;
  int yas;
  Kisi(this.isim, this.yas); // bunu yaparak nesne üretildiğinde bu parametrelere değer verilmesini zorunlu kılıyorum.

  void kendiniTanit(){
    print("Benim adım $isim ve yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas = 0 ;
  Calisan(String isim, int yas, this.maas) : super(isim, yas) {
   
  }

  @override
  void kendiniTanit() {
    super.kendiniTanit(); // bu kendini tanıt ı yazdı altına da maaşını alta yazdık.
   print("Maaşım da $maas");
  }


}