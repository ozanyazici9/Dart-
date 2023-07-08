/**
 * Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.
 */
//lexical variable scope ( sözcüksel değişken kapsamı)
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a(){
    var aDegiskeni = 2;

   void b(){
    var bDegiskeni = 3; // en alttaki metot dan üsteki değikenlere erişebiliyorum.
    print(aDegiskeni);
    print("mainDegiskeni");
   }
  }
}