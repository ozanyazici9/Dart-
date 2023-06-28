import 'dart:io';

void main(List<String> args) {

  //soru 1
  var sehirler = <String>[];
  sehirler.add("Istanbul");
  sehirler.add("Ankara");
  sehirler.add("Izmir");
  sehirler.add("Hatay");

  for(var sehir in sehirler){
    print(sehir);
  }

  print("/////////////////////////////////");

  //soru 2
  var myMap= <String, dynamic>{"cpu çekirdek sayısı": 8, "ram": 32, "ssd": true};
  for(var element in myMap.entries){
    print("${element.key}: ${element.value}");
  }

  print("/////////////////////////////////");

  //soru 4
  var liste1 = <int>[3, 5, 7, 9, 11];
  var liste2 = <int>[1, 2, 4, 6, 8];
  var liste3 = <int>[...liste1, ...liste2];

  var mySet = <int>{};

  for(var i in liste3){
    i*=i;
    mySet.add(i);
  }

  for(var j in mySet){
    print(j);
  }

  print("/////////////////////////////////");

  //soru 3
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[]; //listemin içinde mapler var.
  Map<String, dynamic> eklenecekSehir1 = <String, dynamic>{}; // farklı gösterimler ile map oluşturdum.
  eklenecekSehir1["il_adi"] = "hatay";
  eklenecekSehir1["ilce_sayisi"] = 24;
  eklenecekSehir1["plaka_kodu"] = 31;

  Map<String, dynamic> eklenecekSehir2 = Map<String, dynamic>();
  eklenecekSehir2["il_adi"] = "istanbul";
  eklenecekSehir2["ilce_sayisi"] = 30;
  eklenecekSehir2["plaka_kodu"] = 34;

  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3["il_adi"] = "Adana";
  eklenecekSehir3["ilce_sayisi"] = 27;
  eklenecekSehir3["plaka_kodu"] = 01;

  iller.add(eklenecekSehir1); //oluşturduğum maplari listenin içine attım.
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({"il_adi":"izmir",  
  "ilce_sayisi":"9",
  "plaka_kodu":"35"}); // bir map oluşturdum ve onu listenin içine attım. map böyle oluşturunca map metotlarını kullanamıyorum çünkü bir adı olmuyor böyle. 

  print(iller);
  print(iller[2]['il_adi']);

  for(int i=0; i<iller.length; i++){
    var oankiSehirMapYapisi = iller[i];
    print("Listenin ${i+1}. elemanında bulunan sehir adı: ${oankiSehirMapYapisi['il_adi']} ilce sayısı : ${oankiSehirMapYapisi['ilce_sayisi']} plaka kodu: ${oankiSehirMapYapisi['plaka_kodu']}");
  }

  print("/////////////////////////////////");

 //soru 5
  int girilenNot = 0;
  List<int> girilenNotlar = <int>[]; // iki liste gösteriminide hatırlamak için iki şekilde de yazdık ikiside büyüyebilen liste
  List<int> girilenNotlar2 = List.empty(growable: true);
  do{
    print("Lütfen notunuzu giriniz , çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if(girilenNot != -1){
      girilenNotlar.add(girilenNot);
   }
  } while(girilenNot != -1);

  print("Kaç tane not girildi ${girilenNotlar.length}");
  double ortalama = ortBul(girilenNotlar);
  
  print("Girilen notların ortalamsı $ortalama");
  
}
double ortBul(List<int> liste) {
  int toplam  = 0;
  for(int i = 0; i < liste.length; i++){
    toplam = toplam + liste[i];
}

return toplam / liste.length;
}