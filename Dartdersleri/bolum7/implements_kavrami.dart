/**
 * Dart dilinde interface kavramı yoktur, ama sınıfları implements anahtar kelimesi ile interfacemiş gibi kullanabiliriz.
 * Interfaceler sayesinde ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.
 * 
 * Interface olarak kullanılan sınıfların metotları bu sınıfları implemente eden sınıflar tarafından kullanılmak zorundadır.
 * Interfaceler sayesinde dart dilinde olmayan çoklu kaltım sağlanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirilebilir.
 * 
 */

void main(List<String> args) {
  
}

abstract class Hayvan{}

abstract class Ucabilenler {
  void fly();
  void test(){
    print("test");
  }
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek implements Havlayabilenler, Kosabilenler { // implements sayesinde sınıfımıza birden fazla sınıfın özelliğini ekleyebildik.
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }

}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {
    // TODO: implement fly
  }
  
  @override
  void test() {
    // TODO: implement test
  }

}

class Insan implements Kosabilenler {
  @override
  void run() {
    // TODO: implement run
  }

}
