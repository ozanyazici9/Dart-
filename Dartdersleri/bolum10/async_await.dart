void main(List<String> args) async{ // await i süslü parantezler içnde kullanıyorsam o metotun async olarak tanımlanması lazım.
  print("İnternetten kişi verisi getirilecek");
  //String kisi = await kisiVerisiniGetir(); // await sonucu bekle sonra atama yap diyor. bunun ataması beklenirken alttaki işlemlerde bekliyor. Eğer kisi ye atanacak değerle ilgili bir işlem yapıcaksam await i kullanırım.
  kisiyleIlgiliIslemler(); // bu bir future metot olmadığı için burasının bitmesi beklenmiyecek alttaki işlemlere geçilebilecek.
  print("Başka işler yapılacak");
  //print(kisi.length);
  print("İşlem bitti");
}

void kisiyleIlgiliIslemler() async {  // yukarıdaki gibi değilde bu şekilde farklı metotda yapmak daha mantıklı çünü kod daha düzgün ve okunaklı gözüküyor. Then yerine bu tercih edilebilir.
  String kisi = await kisiVerisiniGetir(); 
  print(kisi.length);

}


Future<String> kisiVerisiniGetir() {

  return Future.delayed(Duration(seconds: 3), () {
    return "Kişi adı : Ozan ve id : 100";
  });
}

