void main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, dynamic>{"yas" : 34};
  var mySet = <String>{"emre" , "hasan"};    //bu kısayolları kullandığımızda editör set ve map ayrımını içine yazılana göre yapıyor.

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  //spreads operatör
  var sonListe = [...tekSayilar, ...ciftSayilar]; //alttakinin kısa yolu ... ile ypılıyor.

  /* sonListe.addAll(tekSayilar); //sonListe ye teksayilar ve ciftSayilar listesini ardı ardına ekledim.
  sonListe.addAll(ciftSayilar);
 */

  var map1 = {"ad": "ozan"}; //set için spreads operatörü.
  var map2 = {"yas": 22};

  var sonMap = {...map1, ...map2};

  var set1 = {"elif"};
  var set2 = {"ozan"};
  var set3 = {"berfin"};
  var set4 = {"ozan"};

  var sonSetYapisi = {...set1, ...set2, ...set3, ...set4};



  print(sonListe);
  print(sonMap);
  print(sonSetYapisi);
}