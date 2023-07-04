void main(List<String> args) {
  var str = "ozan"; // değişken atayıp değer verdiğim zaman bellekte ayrılan alana "ozan" değeri verdi. Daha sonra değişkenin değerini değiştirdiğimde daha önce ayrılan alandaki tutlan değer değişmiyor yani orda "ozan" değeri hala duruyor onun yerine bellekte başka bir alan oluşturuluyor ve onun içine yeni girilen değer yazılıyor. bu örnekte "yazıcı". Bu bellekteki ayrılan alanlaarın değişmezliğini gösteriyor bize. Daha sonra çöp toplayıcı gelip kullanılmayan alanı temizliyor.
  str = "yazıcı";

  final String str2 = "ozan";
  //str2 = "yazıcı" // Burda final tanımlanmış bir değişkeni değiştiremezsiniz final kelimesi yukarıda anlatılan durumun oluşmasını engeller. Sabittir değişmez(immutable).

  const String str3 = "ozan";
  //str3 = "yazıcı"; final ile aynı durum değişmez bu değişkende.

  final tarih = DateTime.now(); // final ile const un arasındaki farklardan biri; final runtime da çalışır const compiletime da çalışır. BU yüzden runtime da belli olacak değerleri const olarak tanımlayamayız.
  //const tarih2 = DateTime.now();

  //final liste = [1, 2, 3]; // final listelere eleman eklenebilir. Ama başka bi yerde liste = diye bişey yapamam çünkü bellek adresi değişir.
 // final liste2 = [1, 2, 3];

 /* if (liste == liste2) {  // sonuç eşit değil çünkü karşılaştırılan şey elemanlar değil tutulan adresler.
    print("eşit");
  } else {
    print("eşit değil");
  }*/

  const liste = [1, 2]; // const listelere eleman atanmaz içeriği değiştirilemez.
  const liste2 = [1, 2]; // const sayesinde içeriği aynı olan listeler bellekte tek bir yer tutuyor bir diğeri için yeni bir alan oluşturulmuyor böylece bellekten tasarruf ediliyor.
  

  if (liste == liste2) { // sonuç eşit olur çünkü adresler aynı.
    print("eşit");
  } else {
    print("eşit değil");
  }




}