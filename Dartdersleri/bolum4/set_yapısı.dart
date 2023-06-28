/* set yapısında herbir eleman eşsizdir bu yüzden set yapısındaki "ozan" elemanı bir kere olur başka "ozan" eklenemez. Diyelimki ozan bir çekilişe birden fazla kez başvurdu ama çekilişte ismi bir kere geçmeli bu durumda set yapısı kullanarım.

ayrıca elemanları sıralı olarak tutmaz. bu durumda indexleri kullanamayız. elemanları kontrol etmek için contains metodu kullanılır. */

void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("ozan");
  isimler.add("büşra");
  isimler.add("beste");
  isimler.add("faik");

  bool sonuc = isimler.remove("beste31");
  print("sonuc : " + sonuc.toString());

  print("*********************************");

  for (String s1 in isimler) {
    print("isim : $s1");
  }
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];
  Set<int> rakamlar = Set.from([1, 2, 3, 4, 2, 1, 2, 3, 4, 5, 1, 1, 1, 1]);
  for (int s1 in rakamlar) {
    print("no : $s1");
  }

  rakamlar.clear();
  rakamlar.addAll(
      ciftSayilar); //rakamları ciftsayilar listesinin elemanları ile doldurdum. Rakamlar set old. dolayı yazdırırlen her eleman bir kere yazıldı.

  for (int s1 in rakamlar) {
    print("add alldan sonra no: $s1");
  }

  //create a simple set on dart
  
}
