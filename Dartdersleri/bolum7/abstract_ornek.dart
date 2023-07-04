void main(List<String> args) {
  Veritabani db = FirebaseDB(); // upcasting // diyelim ki oracle dan vazgeçip firebase e geçmek istediniz abstract sınıf sayesinde değiştirmeniz gereken tek yer burası oluyor.

  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) { // polimorfizm
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
  print("oracle dbden user silindi");
  }

  @override
  void userSave() {
   print("oracle dbye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("oracle dbdeki user güncellendi");
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
  print("firebase dbden user silindi");
  }

  @override
  void userSave() {
   print("firebase dbye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("firebase dbdeki user güncellendi");
  }
}

