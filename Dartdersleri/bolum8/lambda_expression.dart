/**
 * Lambda : ismi olmayan fonksiyonlardır. Dartta her fonksiyon aslında bir nesnedir. Bu yüzden nesne gibi kullanılabilir.
 */
void main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
  int toplam = a + b;
  print(toplam);
  };

  fonksiyon1(3, 5);

  var f2 = (int s) => s * 2;
// iki şekilde de yazılabiliyor.
  var f3 = (int s2) {
     return s2 * 2;
  };

  var sayi = f2(5);
  print(sayi);
  print(f3(6));
}

// Normal bir fonksiyon 
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
