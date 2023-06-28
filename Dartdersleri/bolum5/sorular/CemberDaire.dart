class CemberDaire{
  double _yaricap = 1;
  double _pi = 3.14;
  double? _cevre;
  double? _alan;

  CemberDaire(double yaricap){
    _yariCapKontrol = yaricap;  // set fonksiyonu old. için direkt = ile parametre gönderebiliyorum.
  }

  void set _yariCapKontrol(double deger){

    if (deger > 0) {
      _yaricap = deger;
    }else {
      _yaricap = 1;
    }
  }

  void CevreHesapla() {            // cemberin cevresi 2piR dairenin alanı piR^2

    _cevre = 2*_pi*_yaricap;
    print("cemberin cevresi: $_cevre");
  
  } 
   void AlanHesapla (){   
            
    _alan = _yaricap*_yaricap*_pi;
    print("Dairenin Alani: $_alan");

  }
}