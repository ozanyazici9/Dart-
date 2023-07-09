import 'dart:io';
// dart, single thread çalıştırır. Bu da performansı etkileyebilir. Etkilemesin diye asenkron programlama yaparız.
void main(List<String> args) {
   print("Anne çocugu ekmek almaya yollar"); 
   print("Cocuk ekmek almak için evden çıkar.");
   Future<String> sonuc = uzunSurenIslem(); //asenkron için.    //uzunSurenIslem(); // kahvaltının hazır olamsı için çocugun bakkaldan gelmesi lazım. Bu senkron çalışma örneği.
   sonuc.then((value) => print(value)).catchError((hata) { print(hata);}).whenComplete(() => print("Ekmek Alma operasyonu bitti.")); // future metotunun işi bitince değer sonuca geliyor ve onu yazdırıyoruz. print(sonuc); deseydik program bu satırı çalıştırır ama istediğimiz şeyi yapmazdı çünkü sonuca değer atanması için 2 sn geçmesi gerekiyor.Böyle yapınca program alt future metodunun işi bitince satırı çalıştırıyor. CatchError de eğer bir hata olursa burası çalışıyor ve hatayı görebiliyoruz. CatchError un içinde lamda bir fonksiyon var ona "hata" diye bir parametre veriyoruz daha sonra bu lambda metotun bloğunda hatayı yazdırıyoruz. Whencomplete metodu da hata olsun olmasın çalışır.
   print("Peynir zeytin hazırlanır."); // future delayed ile yaptığımda asenkron oluyor ve çocuk ekmek almaya gittiğinde diğer işlemler devam edebiliyor. Çünkü bu sayede thread kitlenmiyor. Çocuk eve gelmeden kahvaltı hazır olabiliyor.
   print("kahvaltı Hazır!"); 

}

Future<String> uzunSurenIslem() { // bekleme durumu old için fonksiyonu böyle yazıyorum yani muhtemel String döndürecek demek oluyor bu.

 Future<String> sonuc = Future.delayed(Duration(seconds: 2), (){ // duration dan sonra ne yapılacak onu yazıyorum. //Future bir sınıf Future.delayed isimlendirilmiş kurucu. Bana bir future nesnesi oluşturdu bunu sonuc un içine attım
   // return "Çocuk ekmekle eve girer"; hata almak için burayı yorum satırı yaptık.
    throw Exception("Bakkalda ekmek kalmamış");
  });
  //sleep(Duration(seconds: 5)); //dart.io nun içindeki sleep metotunu kullandık. 5 sn bekle diyorum yani senkron için
  return sonuc;
}