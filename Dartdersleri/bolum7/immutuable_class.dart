void main(List<String> args) {
  const Student emre = Student(5, "emre"); //ikiside aynı yeri göstersin bellekten tasarruf etsin diye const yaptık.
  final Student emre2 =const Student(5, "emre");
  var emre3 = Student(5,"emre"); // var ile tanımladığımda aşağıdaki gibi değer değiştirebilme şansım var 
  //emre3 = Student(5, "emre");
  


  if (emre == emre3) { //emre emre2 ye eşittir ama emre 3 e eşit değiller  emre3 e const student yazarsam eşit olurlar. çünkü adresler aynı olur.
    print("Eşittir.");
  } else {
    print("eşit değildir");
  } 
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim); // tasarruf için const
}