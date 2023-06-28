void main(List<String> args) {
  List<int> sayilar = [];
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(7);
  sayilar.add(19);
  print(sayilar);

  List<int> sayilar2 = [1,2,3];
  sayilar2.add(55);
  print(sayilar2);

  List<int> sayilar3 = List.filled(10, 10, growable: true); 
  sayilar3.add(55);
  print(sayilar3);
  print(sayilar3.length);

  List<int> sayilar4 = List.empty(growable: true); //List<int> sayilar = []; ile aynı şey aslında.
  List<int> sayilar5 = [];
  sayilar5.add(5);
  sayilar4.add(10);
  print(sayilar4);
  print(sayilar5);
}