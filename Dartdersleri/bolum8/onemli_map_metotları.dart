void main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  map['id'] = 5;
  map['isim'] = 'emre';
  map['renk'] = 'yeşil';
  map['soyisim'] = 'başçı'; 

  var yeniMap = Map.from({'deger': 'yeni'}); // yeni bir map oluşturur. yeni map i yeniMap e atadık.
  var mapFromEntries = Map.fromEntries(map.entries); // parametre aldığı map in entry lerini değişkene kopyalar.

  print(mapFromEntries);

  var liste = <int>[1, 2, 3, 4];
  var mapFromIterable = Map<String, String>.fromIterable(liste, key: (item) { // iterable parametreyi map e dönüştürüyor. Listenin itemlerini key, item*2 yi de value olarak ayarladık. key ve value itemleri parametre alan bir metot o yüzden ayarlamaları böyle yaptık. Burda higher order functions örneğinide görüyoruz.
    return "$item";
  }, value: (item) => "${item * 2}");
  print(mapFromIterable);

  map.update('id_yeni', (value) => value * 3, ifAbsent: () => 100 ); // bir key in value sunu değiştirmek istediğimizde bunu kullanırız eğer yazdığımız key mapde yoksa o zaman ifAbsent(eğer yoksa) çalışır. Bu örnekte eğer yoksa keyi id_yeni olan ve value su 100 olan bir öğe daha eklenecek.
  print(map);

  map.putIfAbsent("soyisim", () => "yazıcı"); // eğer böyle bir alan yoksa yarat diyoruz. varsa kullanılmıyor.
  print(map);




}