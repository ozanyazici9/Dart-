void main(List<String> args) {
  int sayi = 19;
  int sayi1 = 20;

  if (sayi > sayi1) {
    print(" $sayi $sayi1' den büyüktür. ");
  } else if (sayi < sayi1) {
    print(" $sayi1 $sayi' dan büyüktür.");
  } else {
    print(" $sayi1 $sayi' a eşittir.");
  }

  print("--------------------------------------");

  int not = 101;

  if (not >= 90 && not <= 100) {
    print("Harf notunuz AA' dır.");
  } else if (not >= 80 && not < 90) {
    print("Harf notunuz BA' dir.");
  } else if (not >= 65 && not < 80) {
    print("Harf notunuz BB' dir.");
  } else if (not >= 45 && not < 65) {
    print("Harf notunuz CB' dir.");
  } else if (not >= 30 && not < 45) {
    print("Harf notunuz CC' dir.");
  } else if (not >= 25 && not < 30) {
    print("Harf notunuz DC' dir.");
  } else if (not >= 15 && not < 25) {
    print("Harf notunuz DD' dir.");
  } else if (not >= 10 && not < 15) {
    print("Harf notunuz FD' dir.");
  } else if (not >= 0 && not < 10) {
    print("Harf notunuz FF' dir.");
  } else {
    print("Hatalı giriş.");
  }

  print("--------------------------------------");

  int sayi2 = 9;
  int sayi3 = 7;
  var kucuksayi;

  //sayi2 < sayi3 ? kucuksayi = sayi2 : kucuksayi = sayi3;
  kucuksayi = sayi2 < sayi3 ? sayi2 : sayi3;

  print("küçük sayı: $kucuksayi");

  print("--------------------------------------");

  String? ad = null; //editöre null olduğunun farkındayım diyorum böylece hata vermiyor.(null safety özelliğinden dolayı yapıyorum bunu)
  String? soyad = "yazıcı";
  String? mesaj;

  mesaj = ad ?? soyad; //ad null ise soyadı mesaja atar değilse mesaja ad atanır.
  print("Merhaba $mesaj");
}
