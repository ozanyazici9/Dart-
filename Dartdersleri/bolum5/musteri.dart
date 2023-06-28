class Musteri{
  int? _musteriNo;

 // Musteri(this._musteriNo);

 Musteri(int musteriNo) {
  _musteriNOKontrol(musteriNo);
 }

 String get musteriNoSoyle{
  return "Musteri no : $_musteriNo";
 }

 String get musteriNoSoyle2 => "Musteri no : $_musteriNo"; // tek satır old. için fat arrow ile yapılabilir.
 

 void set musteriNoAta(int no) { 
  if (no > 300) {
    _musteriNo = no;
  } else 
    return;
 }

 void _musteriNOKontrol(int no) { // set fonksiyonu ile aynı şeyi yapıyor değişkene değer atıyor. O yüzden bu örnekte tek fark yazım 
  if (no > 300) {
    _musteriNo = no;
  } else 
    return;
 }

 void bilgileriYazdir(){
  print("Musteri Numarası : $_musteriNo");
 }
}