void main(List<String> args) {
  print("Çift sayilarin toplami: " + ciftToplam(9).toString());
  print("Dairenin alani " + daireAlani(9).toString()); //pi opsiyonel çünkü.
  ucgen(kenar1: 13, kenar3: 13, kenar2: 13);
}

//soru 1
int ciftToplam(int sayi) {
  int toplam = 0;
  for (int i = 1; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam += i;
    }
  }
  return toplam;
}

//soru 2
double daireAlani(int r, [double pi = 3.14]) => pi * (r * r);

//soru3
void ucgen({int kenar1 = 0, int kenar2 = 0, int kenar3 = 0}) {
  //isimlendirilmiş parametre plarak aldım. bu yüzden yukarıda istediğim sırada verebildim parametreleri.
  if (kenar1 == kenar2 && kenar2 == kenar3) {
    print("Eşkenar Üçgen");
  } else if (kenar1 == kenar2 || kenar1 == kenar3 || kenar2 == kenar3) {
    print("İkizkenar üçgen");
  } else {
    print("Çeşitkenar Üçgen");
  }
}
