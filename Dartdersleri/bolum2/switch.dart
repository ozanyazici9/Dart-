void main(List<String> args) {
  String not = "BA";

  switch (not) {
    case "AA":
      print("Notunuz 90 - 100 aralığındadır.");
      break;

    case "BA":
      print("Notunuz 80 - 90 aralığındadır.");
      break;

    case "BB":
      print("Notunuz 70 - 80 aralığındadır.");
      break;

    case "CB":
      print("Notunuz 60 - 70 aralığındadır.");
      break;

    case "CC":
      print("Notunuz 50 - 60 aralığındadır.");
      break;

    case "FF":
      print("Notunuz 50 den küçüktür.");
      break;

    default:
      {
        print("hatalı değer girildi");
      }
  }

  print("--------------------------------------------");

  int sayi = 39;
  int bolum = (sayi ~/ 10);

  switch (bolum) {
    case 3:
      print("Sayı 30 a eşit veya büyüktür.");
      break;

    case 2:
      print("sayi 20 ye eşit veya büyüktür.");
      break;

    case 1:
      print("sayı 10 a eşit veya büyüktür.");
      break;

    case 0:
      print("sayı 10 dan küçüktür.");
      break;
  }
}
