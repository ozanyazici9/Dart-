import 'musteri.dart';
import 'veritabani_islemleri.dart';

/**
 *  private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz. Bu durumlarda _ işareti ile bunları saklarız.
 * 
 *  getter metotlar: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır.
 *  Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlamaktır.
 * 
 *  setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılan değişkenlere veri atamaktır, ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.  
 * 
 */

void main(List<String> args) {
  VeritabaniIslemleri db = VeritabaniIslemleri();

  VeritabaniIslemleri db2 = VeritabaniIslemleri.loginWithNameandPassword("ozan2", "123");

  Musteri m1 = Musteri(674);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 545; // set in bir farkı daha, metot a parametre olarak değilde = ile direkt atama yapabilirim.
  print(m1.musteriNoSoyle);

  Musteri m2 = Musteri(-999);
  m2.bilgileriYazdir();
  m2.musteriNoAta = 777;
  print(m2.musteriNoSoyle);
  print(m2.musteriNoSoyle2);

  bool sonuc = db.baglan();  // db2 ile yapsaydım baglanamayacaktı çünkü gönderilen parametreler doğru değil.
  if (sonuc) {
    print("Baglandim");
  }else 
   print("Baglanamadim");
  
}

