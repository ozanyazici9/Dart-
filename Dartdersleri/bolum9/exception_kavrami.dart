void main(List<String> args) {
  print("program basladı");

  try{
    int sayi = 100 ~/ int.parse("ozan");
    print(sayi);
  } on IntegerDivisionByZeroException { //alınabilecek hatayı biliyorsam catch yerine böylede yazabilirim.
    print("Sayı sıfıra bölünemez!");  // eğer hata bu ikiside değilse alttaki catch hatayı yakalıyıp mesajı veriyor.
  } on FormatException catch(e) { //eğer hatanın mesajlarını görmek istiyorsak catch(e) yazmalıyız. sonra e.message falan diyebiliyoruz.
    print(e.message);
    print(e.source);
  }
  catch(e) {
    print("Hata çıktı ${e}"); // e.toString() ile de gösterilebilir
  }finally{
    print("işlem bitti"); // finally hata çıksın çıkmasın çalışır.
  }

  print("program bitti");


  
}