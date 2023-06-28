class Ogrenci {
  int _id = 1;
  int _not = 1;

  Ogrenci(int id, int not){
    OgrenciIdKontrol = id;
    OgrenciNoKontrol = not;
  }


  void set OgrenciIdKontrol(int deger1){

    if (deger1 > 0){
      _id = deger1;
    } else {
      _id = 1;
    }
  }

  void set OgrenciNoKontrol(int deger2){

    if (deger2 > 0){
      _not = deger2;
    } else {
      _not = 1;
    }
  }

}