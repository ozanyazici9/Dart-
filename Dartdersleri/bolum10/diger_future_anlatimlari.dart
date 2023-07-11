
void main(List<String> args) async{
  print("Program basladı");
  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });

  print("program bitti");

  Future<int> toplam = Future (() { // illa delayed ile kullanmamıza gerek yok zaten belli bir süre alacak işlemleri böylede yazabiliriz.
    int toplam = 0;
    for(int i = 0; i < 10000000; i++) {
      toplam = toplam + i;
    }
    //return toplam;
    throw Exception("Toplam hesaplanamadı");
  });

 // toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));

  try {
    int forSonuc = await toplam; // async await te de try catch kullanarak hata yakalayabiliriz.
    print("******* $forSonuc");
  } catch (e) {
    print(e);
  }

  var f2 = Future.value('ozan'); // yazdığımız value yu future türünde direkt geriye döndürür.
  var f3 = Future.error("hata ile biten future");  // geriye hata döndürüyor.

  f3.catchError((hata) => print(hata));
}