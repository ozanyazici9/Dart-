
void main(List<String> args) {
  double sayi, sayi1, sayi2;
  sayi = 11.2;
  sayi1 = 23.5;
  sayi2 = 76.3;

  print("ortalaması : ${(sayi + sayi1 + sayi2) / 3}");

  print("----------------------------------------------");

  int kenar1 = 11;
  int kenar2 = 11;
  int kenar3 = 11;

  if (kenar1 == kenar2 && kenar2 == kenar3) {
    print("Eşkenar üçgen");
  } else if (kenar1 == kenar2 || kenar1 == kenar3 || kenar2 == kenar3) {
    print("İkizkenar üçgen");
  } else {
    print("Çeşitkenar üçgen");
  }

  print("----------------------------------------------");

  int vize = 100;
  int final1 = 10;
  double ortalama = (vize * 40) / 100 + (final1 * 60) / 100;

  if (ortalama >= 50) {
    print("Dersi Geçtiniz");
  } else {
    print("Kaldın Süper zeka");
  }

  print("----------------------------------------------");

  for (int i = 0; i < 5; i++) {
    print("Ozan Yazıcı");
  }

  print("----------------------------------------------");

  int i = 0;

  while (i < 5) {
    print("Ozan YAZICI......");
    i++;
  }

  print("----------------------------------------------");

  int j = 0;
  do {
    print("OZAN yazıcı");
    j++;
  } while (j <= 5);

  print("----------------------------------------------");

  for (int i = 1; i < 100; i++) {
    if (i % 15 == 0) {
      print("${i * i}");
    }
  }

  print("----------------------------------------------");

  int f = 7;

  for (int i = f - 1; i > 0; i--) {
    f *= i;
  }
  print(" 7' in faktöriyeli $f' tır.");
}
