/**
 * Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.
 */
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {}

   var dondurulenFonksiyon = topla(3); // topla fonksiyonu geriye fonksiyon döndürdüğü için d nin içinde fonksiyon tanımı yer alıyor. Onu artık bir fonksiyon gibi kullanabilirim 
   var sonuc = dondurulenFonksiyon(4);
   print(sonuc); 
  
  
}

Function topla(int eleman){ // Function diyerek; bu öyle bir fonksiyon ki geriye fonksiyon döndürecek diyoruz.
  return (int deger) => eleman * deger;
}