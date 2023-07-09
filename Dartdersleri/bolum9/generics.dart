/**
 * Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe bağlıdır.
 * Sürekli kullanılan koleksiyon yapıları (liste, map, set) varsayılan olarak heterojendir. Yani aynı koleksiyon yapısında farklı türde verileri saklayabiliriz. Ama yapmalı mıyız????????
 * 
 * Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar type-safe olur, compile time da hatalı veri girişi tespit edilir ve bize hatamız söylenir. Böylece runtimeda çıkabilecek hataların önüne geçelir.
 * 
 * Generic tipler <> içinde belirtilir. List<String> ifadesi bu listede sadece String veriler olacağı anlamı taşır. Bu listeye String dışında bir veri eklenirse, daha programı çalıştırmadan hata alırız ve düzeltmemiz gerekir. Böylece daha güvenle kod yazmış oluruz.
 * 
 * Generic' ler dartta bulunan çoğu yapıda zaten vardır. List, map, set, Future, Stream gibi... Kendi oluşturduğumuz sınıflarda ve metotlarda da genericleri uygulayabilirisiniz. Böylece hem daha güvenli kod yazmış olursunuz hem de benzer amaçları gerçekleştiren kod yapılarını tek bir yapıda toplayabilirsiniz.
 */

void main(List<String> args) {
  List liste = [];  // tip belirtmeden bir liste oluşturduk.
  liste.add("ozan");
  liste.add(5);
  liste.add(false);

  yazdir(liste);

  //List<E> ==> Element 
  //R ==> metotların return tipleri için

  //Ogrenci<T extends Insan> Insan sınıfının alt sınıfından olmalı diyor.


}

yazdir(List list) {
  print(list[1].length); // hata verir çünkü integer değerin length i olmaz. Biz bu metotu Liste nin string old. düşünerek yazdık ama listenin tipi dynamic işte burda bir şey oluştururken tip belirtmenin önemini görüyoruz.
} 