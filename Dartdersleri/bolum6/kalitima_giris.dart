void main(List<String> args) {
  User user1 = User();
  var user2 = Normaluser();
  SadeceokuyabilenNormalUser user3 = SadeceokuyabilenNormalUser();
  AdminUser user4 = AdminUser();

  User user5 = AdminUser();                  // her kedi bir canlıdır misali
  User user6 = SadeceokuyabilenNormalUser(); // upcasting yukarı çevrim. Referans türlerimi en üst sınıf türünde belirleyebiliyorum.

  List<User> tumUserlar = []; // upcasting in yararı; tum userları tuttugum bir liste yapmak istediğimde adminuser için ayrı türde normaluser için ayrı türde liste oluşturmama gerek yok user türünde liste yapıp hepsini ekleyebiliyorum.
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  test(user1);
  test(user2);
  test(user3);
  test(user4);

}

void test(User kullanici) {
  kullanici.girisYap(); // polimorfizm çok biçimlilik; test metodunun kullanici adli parametresi user1 user2 vb nesneleri parametre ald için ve bunlardan biri user sınıfından biri normaluser sınıfından old için çokbiçimli olmuş oluyor.
}

class User {
   String email = "";
  String password = "";

  void girisYap() {
    print("Parent user giriş yaptı");
  }
}

class Normaluser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }

  @override // bu fonksiyondan üst sınıfta var ama ben override edip yani üstüne bidirip veya ezip yeniden yazmak istiyorum demek
  void girisYap() {
    print("Normal user giriş yaptı");
  }
}

class SadeceokuyabilenNormalUser extends Normaluser {
  void adiniSoyle() {
    print("ben sadece okuyabilrim");
  }

  @override
  void girisYap() {
   print("SadeceokuyabilenUser giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("toplam user sayısı 20");
  }

  @override
  void girisYap() {
    // TODO: implement girisYap
    print("Admin user giriş yaptı");
  }
}