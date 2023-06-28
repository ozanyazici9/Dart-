/*Soru1
CemberDaire isimli sınıf oluşturun. Bu sınıfın yarıçap alan kurucusu olmalı. Ayrıca cevre ve alanını hesaplayan metotlar olmalı.(pi = 3.14)

Soru2
Ogrenci isimli sınıf olusturun . Bu sınıfta ogrencinin idsi ve not degeri tutulmalı. 100 elemanlı bir listede id ve not degerlerini restgele olusturarak bu ogrencileri saklayın ve bu ogrencileri yazdıran metotu yazın.

*/

import 'CemberDaire.dart';

void main(List<String> args) {
  //soru1
  CemberDaire cb = CemberDaire(4);
  cb.CevreHesapla();
  cb.AlanHesapla();
}