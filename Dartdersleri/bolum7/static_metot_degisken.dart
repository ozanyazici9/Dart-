void main(List<String> args) {
  Matematik m1 =Matematik(50, 20);
  m1.topla();
  m1.cikar();

   Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();

  print(Matematik.PI);
  Matematik.sinifAdiniSoyle(); // static metoda dışarıdan erişebildim.

  print("Toplam işlem sayısı ${Matematik.toplamIslemSayisi}"); // static olmadığı için değiken sadece nesnenin yapdığı işlem sayısını verir.

}
class Matematik {
  //instance variable bunları kullanmak için mutlaka bir nesne üretilmek zorunda. Instance variablelar ve metotlar, static alan içinden erişilemez ama tam tersi olur.
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0; // instance variable olarak yaptığımızda nesne nin yaptığı toplam işlem sayısını veriyor sadece ama diğer nesnelerle yapılan işlemlerin de dahil edilmesini istiyorum onun için bu değişkenin static olarak tanımlayıp sınıf değikeni yapmalıyım.

  //sınıf değişkeni  static sayesinde buna dışardan bir nesne üretmeden erişebilirim.
  static double PI = 3.14;
  static void sinifAdiniSoyle(){ 
    print("Ben matematik sınıfıyım");
}

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    toplamIslemSayisi ++;
    print("Toplam : ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("Sonuc : ${birinciSayi - ikinciSayi}");
  }
}