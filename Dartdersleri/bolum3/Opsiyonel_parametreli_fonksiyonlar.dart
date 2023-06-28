void main(List<String> args) {
 /*  int toplam = SayilariTopla(3, 9); //3 parametreli fonksiyona 2 parametre gönderebiliyorum. fonksiyonda 3. parametreyi opsiyonel olarak belirtmem gerekiyor.
  print("Toplam $toplam"); */

  int toplam = SayilariTopla(sayi2: 5, sayi1: 4, sayi3: 7); //sırayı ben belirledim.
  print("Toplam $toplam");


}

/* /* int SayilariTopla(int sayi1, [int sayi2 = 0, int sayi3 = 0]){ //2. ve 3. parametreyi opsiyonel olarak belirledim. ve null safety den dolayı default 0 atadım.  
  return sayi1 + sayi2 + sayi3; */
} */

int SayilariTopla({int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) => sayi1+sayi2+sayi3; //parametreleri süslü parantez içine alarak hepsinin opsiyonel olmasını sağladım buraya parametre gönderirken sırayıda parametrenin ismini belirterek değiştirebilirim. Opsiyonel old. için default 0 atadım.
