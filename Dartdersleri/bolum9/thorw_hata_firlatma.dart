import 'dart:math';

void main(List<String> args) {
  try {
  double deger = kareKokunuAl(-20);
  print("Deger ${deger.toStringAsFixed(2)}"); // bu metot virgülden sonra kaç sayı gösterilecek onu ayarlamamızı sağlıyor.
  } on FormatException catch (e){
    print(e.message);

  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(int i) {
  try {

  if(i < 0){ // yukarıdaki try catch çalışmadı çünkü throw FormatException önce kendi bulunduğu bloğa bakar bir try catch var mı diye eğer varsa o try catch çalışır. buraya yazmasaydık yukarıdaki çalışıcaktı yani çağrıldı yerde ordada olmasaydı unhandle falan diyo yani attım tutamadın.
    throw FormatException("Sayı negatif olamaz");
    print("Burada"); // eğer if e girerse alttakilerin bi önemi yok .
  } else
  return sqrt(i);
} on FormatException catch(e){
  print(e.message + " metot içindeyim");
} finally { // bunu yazdık çünkü hata yakalandığında throw un old. satırdan sonrası çalışmıyor ama karekokunuAl metotum double değer döndürmeli bunun için her şartta çalışacak finally i yazıp değer döndürüyorum.
  return 0;
}
}
  