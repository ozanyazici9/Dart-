void main(List<String> args) {
  print(sayilariCikar(7, 5));
  print("Çarpım : " + sayilariCarp(6, 9).toString());
  print("sayılardan büyük olanı : " + maxOlaniBul(5, 19).toString());
}

int sayilariCikar(int s1, int s2){
  return (s1 - s2);
}

int sayilariCarp(int s1, int s2) => s1*s2; //Fat Arrow kullanımı eğer fonksiyonumda tek satır var ise bu şekilde yazabiliyorum.

/*int maxOlaniBul(int s1, int s2){

  if(s1 < s2){
    return s2; 
  }else {
    return s1;
  }
  }*/

  int maxOlaniBul(int s1, int s2) => s1 < s2 ? s2 : s1; //metodu if in kısa yazımı ile kullandık.
