/* Map yapısı Set yapısı gibi sırasız bir şekilde elemanları tutar.
bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerinin unique yani eşsiz olması gerekmektedir.
sözlüğe benzetebiliriz birbirinden farklı elemanları içerir.
sabit uzunlukta değil, dinamik uzunluğa sahiptir. */

void main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};

  print(alanKodlari);
  print(alanKodlari["bursa"]);
  print("----------------------------------");
  Map<String, dynamic> ozan = {
    "soyad": "altunbilek",
    "yas": 22,
    "bekarMi": true
  };
  print(ozan["yas"]);
  print("----------------------------------");

  List sayilar = [0,1,2];

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2["yas"] = 55;
  print(deneme2["yas"]);
  print(ozan["yas"]);

  print("----------------------------------");

  for(String oankiAnahtar in ozan.keys){
    print(oankiAnahtar);
    print(ozan[oankiAnahtar]); // oanki key in valuesunu veriyor.
  }
   print("----------------------------------");

  for(dynamic deger in ozan.values){
    print(deger);
  }

   print("----------------------------------");

  for(var element in ozan.entries){
    print("Key : ${element.key}, değeri : ${element.value}");
  }

  print("----------------------------------");

  if(ozan.containsKey("yas")){
    print("Bulunan yaş değeri : ${ozan["yas"]}");
  }

}
