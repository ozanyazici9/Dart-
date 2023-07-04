
import 'dart:math';
import 'ogrenci.dart';

void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(id: 5, notDegeri: 10);
  List<Ogrenci> tumOgrenciler = List.filled(2, Ogrenci());

  ogrenciListesiniDoldur(tumOgrenciler);

  for(Ogrenci oankiOgrenci in tumOgrenciler){
    print(oankiOgrenci);
  }


  print("Öğrencilerin not ortalaması:  ${ogrenciOrt(tumOgrenciler)}");


}

void ogrenciListesiniDoldur(List<Ogrenci> liste) { // parametredeki listenin adı illa tumogrenciler olmak zorunda değil liste yaptık.
  for (int i = 0; i < liste.length; i++){
    liste[i] = Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  } 

}

double ogrenciOrt(List<Ogrenci> tumOgrenciler) {
  int toplam=0;
  for (int i = 0; i < tumOgrenciler.length; i++){
   toplam += tumOgrenciler[i].notDegeri;
  
  }
  return toplam / tumOgrenciler.length;

}