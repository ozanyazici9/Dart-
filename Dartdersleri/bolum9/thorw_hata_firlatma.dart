import 'dart:math';

void main(List<String> args) {
  double deger = kareKokunuAl(20);
  print("Deger ${deger.toStringAsFixed(2)}"); // bu metot virgülden sonra kaç sayı gösterilecek onu ayarlamamızı sağlıyor.
}

double kareKokunuAl(int i) {
  return sqrt(i);
}