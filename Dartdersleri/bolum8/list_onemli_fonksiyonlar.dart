void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(7, "ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali]; // upcasting in kullanıldığı bir liste

  tumOgrenciler.sort( (ogr1, ogr2) {  // verilen şarta göre sıralama yapıyor.
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id){
      return 1;
    } else 
      return 0;
  } );

  print(tumOgrenciler);

  var mapList = tumOgrenciler.map((Person e) => "${e.isim}").toList(); // listemdeki elemanları başka bir şeye dönüştürmeye yarıyor. Bunun türü iterable oluyor ama ben bunu liste türünde istiyorum çünkü daha kullanışlı bu yüzden to.list diyorum.
  print(mapList);

  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([ayse, ali]); // buraya iterable öğe ekleyebilirim yani set olur liste olur vb.

  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 10); // burda higher order functions var any bir başka metodu içeriyor. any belli bir şartı kontrol ediyor ona göre bool değer döndürüyor.
  print(sonuc);

  Map<int, Person> yeniMap = tumOgrenciler.asMap(); // asMap benim listemi bir map e dönüştürdü. Key olarak da index i kullandı.
  print(yeniMap);
  print(yeniMap[0]);
  print(yeniMap[0]!.id);

  print(tumOgrenciler.contains(emre)); // listemde emre diye bişey varmı ona bakıyo.

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0); // any den farkı şartı her elemanın sağlması gerekiyor. yoksa false döner.
  print(sonucEvery);

  var bulunan = tumOgrenciler.firstWhere((element) => element.isim == "hasan"); // diyelimki bir öğeyi arıyorsunuz ve oöğeden listede birden fazla var firstWhere bize o öğenin ilkini bize veriyor. 
  print(bulunan);







  /*var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0)); // her elemanında(5 tane olarak ayarladık) Ogrenci nesnesi olan bir liste yaptık.
  var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>());  //ıterable: elemanları ard arda okunabilen yapılardır(örn listeler, setler vb.). List from tüm öğeleri içeren bir liste oluşturur.
  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>()); // List.of belirtilen öğelerden bir liste oluşturur. List.from dan farkı budur. o yüzden öğelerinin hepsi Ogrernci olmak zorunda. Burda tumOgrenciler listesinde personlar da old için burda hata veriyor bunu çözmek için  .whereType<Ogrenci>(); metodunu kullanıyorum bu metot öğelerin içinden belirtilen türde olanları listeye ekler.
  var listGenerate = List<Ogrenci>.generate(5, (index) => Ogrenci(index, "$index", index*2)); // generate 5 tane öğesi olsun ve bu öğeleri o anki index sayısının 2 fazlasıyla başlat diyoruz yani ilk eleman 2 olucak 3,4,5,6 diye devam edicek.

  print(listeFrom);
  print(listeOf);
  print(listGenerate);

  var degistirilemezListe = List.unmodifiable([0, 1, 2]); // unmodifiable değiştirilemez liste eleman eklenemez silinemez.
  //degistirilemezListe.add(5); ilk yazıldığında hata vermiyor çünkü runtime da çalışıyor.
  print(degistirilemezListe.reversed);
 */



}
 
class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);
  @override
  String toString() {
    return "id:$id ve isim:$isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, this.alinanDersSayisi) : super(id, isim);
  @override
  String toString() {
    return "id:$id ve isim:$isim ve alinan ders sayısı:$alinanDersSayisi\n";
  }
}