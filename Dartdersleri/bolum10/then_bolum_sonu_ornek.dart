import 'dart:ffi';
/**
 * Soru
 * Bir fonksiyon yazın bu fonksiyon aldığı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 sn sonunda sonuclanacaktır ve getirilen kisi bilgisi map olarak alınacaktır. Bu map yapısında username ve id bilgisi olması yeterlidir.
 * 
 * getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazın. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektir.
 * 
 * Son olarak da kurslar listesindeki ilk elemanın parametre olarak alan ve bu kursa ait bir yorummu döndüren bir fonksiyon yazın . Bu fonksiyon 1 saniye sürecektir.
 */
void main(List<String> args) {
  idyeGoreUserGetir(5).then((value) {
    print(value);
    usernameGoreKurslariGetir(value['username']).then((List kurslarListesi) {
      print(kurslarListesi);
      String ilkKurs = kurslarListesi[0];
      kursunIlkYorumuGetir(ilkKurs).then((String yorum)  {
        print(yorum);
      });
    }); // bunun çalışmaı içim value değerin gelmesi gerek onun için then metotunun içine yazıyoruz. 
  });

}

Future<String> kursunIlkYorumuGetir(String kursAdi) {
  return Future<String>.delayed( Duration(seconds: 1), () {
    return "Kurs mukemmel";
  });
}

Future<List<String>> usernameGoreKurslariGetir(String username) {
  print("$username kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), (){
    return ['flutter', 'kotlin', 'javascript'];
  });
}

Future<Map> idyeGoreUserGetir(int id) {
  print("$id idli kullanıcı getiriliyor"); 
    return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
      return {'username': 'ozanyazıcı', 'id': id};
    });
}

