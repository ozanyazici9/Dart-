import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = "ozan";
  String _sifre = "123456";

  VeritabaniIslemleri(){}
  VeritabaniIslemleri.loginWithNameandPassword(this._kullaniciAdi, this._sifre){}

  bool baglan() {
   if (_internetVarMi()) {

    if (_kullaniciAdi == "ozan" && _sifre == "123456") {
      return true;
    }else
     return false;
    }
    
    else {
      return false;
    }

   }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }









}
