void main(List<String> args) {
  List<int> sayilar = List.filled(5, 2, growable: false);
  sayilar[0] = 4;
  sayilar[1] = 1;
  sayilar[2] = 9;

  print(sayilar);
  print(sayilar.length);
  print(sayilar[3]);
  List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  isimler[1] = "ozan";

  print(isimler);

  List<dynamic> karisik = List<dynamic>.filled(5, 0); //tür kısmına hiçbir şey yazmazsam dinamik olarak tanımlanır. ve her veri türünden içerebilir. her iki list in yanına da yazabilirim dinamik i yada sadece birine, hatta yazmasam da olur.
  karisik[0] = "ozan";
  karisik[1] = 5;
  karisik[2] = false;

  print(karisik);
  print("-------------------------------------------");

  //liste elmanların gezmek 
  for(int i =  0; i <sayilar.length; i++) {
    sayilar[i] +=5;
    print(sayilar[i]);
  }
  print("-------------------------------------------");

  for(int oankiEleman in sayilar){ //kısa for ile yaptım.
    print(oankiEleman);
  }
  
  

  
}