/* 
* Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
* Abstract sınıflardan nesne üretilmez, abstract sınıflarda normal ve abstract metotlar olur 
* Abstract mototlar alt sınıflarca override edilmek zorundadır.
*
* Bir sınıfta bir tane abstract metot varsa o sınıf mutlaka abstract tanımlanmalıdır.
*
*
 */
void main(List<String> args) {
  Kare kare1 = Kare(9);
  print('Kare Alan : ${kare1.alanhesapla()}');
  print('Kare Cevre : ${kare1.cevreHesapla()}');

  Dikdortgen dikdortgen1 = Dikdortgen (5, 3);
  print('Dikdörtgen Cevre :${dikdortgen1.cevreHesapla()}');
  print('Dikdörtgen Alan : ${dikdortgen1.alanhesapla()}');
  dikdortgen1.selamla();

  Sekil s1 = Kare(4); // upcasting
  s1.selamla();

  List<Kare> tumKareler = []; // bu ikisini göstermek çin yaptık alttakini yapmak dahaa mantıklı ikisini birden upcasting ile alıyor.
  List<Dikdortgen> tumDikdortgenler = [];
  List<Sekil> tumSekiller =  []; // upcasting in avantajını burada kullandık.
  tumSekiller.add(kare1);
  tumSekiller.add(dikdortgen1);

  test(kare1);
  test(dikdortgen1);

}

void test(Sekil sekil) { // polimorfizm e örnek.
  sekil.selamla();

}

abstract class Sekil { // Sekil çok genel bir kavram old. için alanhesapla ve cavre hasapla metotlarını içini dolduramıyorum o yüzden bu sınıfın soyut yani abstract olması lazım. bu yüzdende metotların gövdelerini siliyorum. sekil in alt sınıfı olan yani ne sekli old. belli olan sınıflar bu metotları override ederek kullanabilecekler bunu her sekil sınıfında tekrar ve tekrar bu metotları yazmamak için kullanıyorum.
  double alanhesapla();
  double cevreHesapla();

  void selamla(){                // Abstract sınıflarda gövdesi dolu metotlarda yazılabilir .
    print("ben sekil sınıfıyım");
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);
  @override
  double alanhesapla() {
    return kenar * kenar.toDouble(); 
  }

  @override
  double cevreHesapla() {
    return kenar * 4;
  }

  @override
  void selamla() {
    print("Burası kare sınıfı");
  }
}

class Dikdortgen extends Sekil {
  int uzunKenar;
  int kisaKenar;

  Dikdortgen(this.uzunKenar, this.kisaKenar);
  @override
  double alanhesapla() {
    return (uzunKenar * kisaKenar).toDouble();
  }
  
  @override
  double cevreHesapla() {
   return (2*(uzunKenar + kisaKenar)).toDouble();
  }

  @override
  void selamla() {
    print("Burası dikdörtgen sınıfı");
  }
}

