class CemberDaire{
  double _yaricap = 1;
  double _pi = 3.14;
  
  

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

  double CevreHesapla() {            // cemberin cevresi 2piR dairenin alanı piR^2

    return  2 *_pi*_yaricap;
    
  
  } 
   double AlanHesapla (){   
            
   return _yaricap*_yaricap*_pi;
    
  }
}