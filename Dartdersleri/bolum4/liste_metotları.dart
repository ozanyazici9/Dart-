void main(List<String> args) {
  List<int> sayilar = [10,7,4,8,9];
  
  if(sayilar.isNotEmpty){

  print(sayilar.first);
  print(sayilar.last);
  }

  print("Boş mu : " + sayilar.isEmpty.toString());
  print("Eleman sayısı: ${sayilar.length}");
  print("Ters sıralması ${sayilar.reversed}");

  sayilar.add(19);
  print(sayilar);
  sayilar.remove(9); //sabit boyutlu listelerde remove removeat metotları çalışmaz.
  print(sayilar);
  sayilar.removeAt(1);  //verilen indexteki elemanı siler.
  print(sayilar);

  //sayilar.clear();
  if(sayilar.contains(9)){
    print("Listede 9 var");
  } else {
    print("Listede 9 yok");
  }
  print(sayilar);

  print(sayilar.elementAt(2)); //2. indexteki elemanı verir.
  print(sayilar.indexOf(11));  //11 elemanının indexini verir.
  sayilar.shuffle(); //elemanlarını yerini rastgele değiştirir.
  print(sayilar);


}
