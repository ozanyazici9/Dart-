void main(List<String> args) {

  try {
  Ogrenci emre = Ogrenci(-5);
  print(emre.yas);

  } on AgeException catch (e) { // burda e ye gelen nesne AgeException ın nesnesi old. için e.mesaj diyebiliyoruz.
    print(e.toString());
    print(e.mesaj); 
  } finally {     // finally içine try catch yazılabilir.
    print("Program bitti");
  }
}

class AgeException implements Exception{
  String mesaj;

  AgeException({this.mesaj = 'AgeException'}); // eğer aşağıda bir mesaj değeri göndermezsem varsayılan olarak AgeException mesaja atanıyor.

  @override
  String toString() {
    return "Hatanın ToString metotu çalıştı.";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas){
    if (yas < 0) {
      throw AgeException(mesaj: "AgeException - Yaş negatif olamaz"); // AgeException sınıfından bir nesne üretiyor o nesne yukarıda catch de yakalanıyor.
    } else 
    this.yas=yas; 
  }
}

