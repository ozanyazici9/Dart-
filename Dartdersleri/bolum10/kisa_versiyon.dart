main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar");
  print("Cocuk ekmek almak için evden cıkar");
  uzunSurenIslem().then((value) => print(value)).catchError((hata) => print(hata)).whenComplete(() => print("Ekmek alma operasyonu bitti"));

  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır!");
}

Future<String> uzunSurenIslem() {
  return Future<String>.delayed (Duration(seconds: 2), () { // burdaki isimlendirilmiş kurucu metot önce 2 sn bekliyor daha sonra parametre olarak aldığı lambda metot geriye verdiğim stringi döndürüyor.
    return "Çocuk ekmele eve girer";
});
}